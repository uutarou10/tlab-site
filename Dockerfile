FROM ruby:2.5.0-stretch
MAINTAINER Kota Nonaka<kota.kaicho@gmail.com>

EXPOSE 3000

WORKDIR /app
ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install --path vendor/bundle

ADD . .

CMD sh scripts/start.sh