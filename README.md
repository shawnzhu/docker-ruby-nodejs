# docker-ruby-nodejs

Dockerfile that generates an image for people who use [Node.js](http://nodejs.org/) and [Ruby](https://www.ruby-lang.org/) on ubuntu.

## Build image

    $ docker build -t=ruby-nodejs

## What's included

* Ubuntu 12.04
* ruby 2.1.1
* [Ruby bundler](https://github.com/bundler/bundler/)
* Node.js - Thanks to [dockerfile/nodejs](https://github.com/dockerfile/nodejs)

## Pull image

    $ docker pull shawnzhu/ruby-nodejs