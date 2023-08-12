FROM ruby:3.2.2-alpine

RUN apk update && apk upgrade && \
  apk add wget curl bash vim git build-base nodejs gcompat less \
  npm yarn postgresql postgresql-dev postgresql-contrib

RUN mkdir -p /desafio-dev
WORKDIR /desafio-dev
COPY . /desafio-dev/

RUN gem update --system && gem install bundler
RUN bundle

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]