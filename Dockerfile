# from https://github.com/Painted-Fox/docker-ruby
FROM paintedfox/ruby

# from https://github.com/dockerfile/nodejs/blob/master/Dockerfile
# from http://stackoverflow.com/questions/13018626/
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

# install bundler
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"