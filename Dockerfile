FROM ruby:2.6.6-alpine3.13

RUN apk add --update --no-cache \
    yarn \
    build-base \
tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR ./usr/src/app

RUN gem install rails

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails","s","-b","0.0.0.0"]