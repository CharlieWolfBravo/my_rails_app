FROM ruby:latest

USER root

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN gem install rails

WORKDIR /app

COPY Gemfile /app/Gemfile

COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

RUN bundle exec rails db:create
RUN bundle exec rails db:migrate

CMD ["rails", "server", "-b", "0.0.0.0"]