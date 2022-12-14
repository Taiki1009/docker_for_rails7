FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential nodejs npm

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
