############################################################
# Dockerfile to build sergelobatch.com
# Based on Ubuntu
############################################################

FROM ruby:2.3.0

MAINTAINER slobatch

# Install bundler
RUN gem install bundler

# Clone remote git repo
RUN git clone https://github.com/slobatch/slobatch.github.io.git

WORKDIR /slobatch.github.io

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve"]
