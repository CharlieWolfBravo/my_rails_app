FROM ruby:bullseye

USER root

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN gem install rails

WORKDIR /app

COPY Gemfile /app/Gemfile

COPY Gemfile.lock /app/Gemfile.lock

RUN bundle check || bundle install

COPY . /app

# CMD ["/bin/bash", "-c", "sleep infinity"]

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]