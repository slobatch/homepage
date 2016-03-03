############################################################
# Dockerfile to build sergelobatch.com
# Based on Ubuntu
############################################################

FROM ruby:2.3.0

RUN apt-get update
RUN apt-get install -y cron

MAINTAINER slobatch

# Install bundler
RUN gem install bundler

# Clone remote git repo
RUN git clone https://github.com/slobatch/slobatch.github.io.git

WORKDIR /slobatch.github.io

RUN bundle install

RUN crontab crons.conf

EXPOSE 4000

CMD ["jekyll", "serve"]
