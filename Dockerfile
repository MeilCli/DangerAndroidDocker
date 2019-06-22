FROM ruby:2.6.3

RUN gem install bundler

ENV APP_HOME /danger
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY ./Gemfile $APP_HOME/Gemfile

RUN bundle install