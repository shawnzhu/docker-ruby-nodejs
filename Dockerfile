FROM shawnzhu/ruby

RUN apt-get update
# from https://github.com/dockerfile/nodejs/blob/master/Dockerfile
# from http://stackoverflow.com/questions/13018626/
RUN apt-get install -y python-software-properties git
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y --force-yes nodejs
