FROM ruby:2.7.0

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN gem install td

VOLUME ["/root/.td"]

ENTRYPOINT ["td"]
