FROM ruby:4.0.6-slim

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

RUN groupadd --system --gid 1000 td \
  && useradd --system --uid 1000 --gid td --create-home --home-dir /home/td --shell /usr/sbin/nologin td \
  && mkdir -p /home/td/.td \
  && chown -R td:td /home/td/.td

USER td

VOLUME ["/home/td/.td"]

ENTRYPOINT ["td"]
