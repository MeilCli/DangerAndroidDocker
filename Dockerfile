FROM ruby:2.6.3-slim

RUN gem install bundler

ENV APP_HOME /danger
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY ./Gemfile $APP_HOME/Gemfile

RUN apt-get update && \
    apt-get install -y --no-install-recommends make g++ git && \
    bundle install && \
    rm -rf /usr/local/bundle/cache/* /usr/local/share/.cache/* /var/cache/* /tmp/* /var/lib/apt/lists/*