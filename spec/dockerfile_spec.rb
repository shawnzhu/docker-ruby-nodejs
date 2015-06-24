require "serverspec"
require "docker"

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  it "ubuntu" do
    expect(os_version).to include("Ubuntu 12")
  end

  %w{git wget curl socat sudo}.each do |p|
    it "installs package #{p}" do
      expect(package(p)).to be_installed
    end
  end

  describe command('node -v') do
    its(:stdout) { should match /0\.12\.5/ }
  end

  describe command('npm -v') do
    its(:stdout) { should match /2\.\d{1,2}\.\d{1,2}/ }
  end

  def os_version
    command("lsb_release -a").stdout
  end
end
