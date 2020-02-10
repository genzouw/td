FROM ruby:2.7.0-slim

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install \
    --no-install-recommends \
    gcc \
    make \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN gem install td \
  && gem cleanup

VOLUME ["/root/.td"]

ENTRYPOINT ["td"]
