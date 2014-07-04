FROM taka0125/ubuntu:14.04
MAINTAINER Takahiro Ooishi <taka0125@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends git build-essential libssl-dev zlib1g-dev sqlite3 libsqlite3-dev libreadline6-dev curl

ENV RBENV_ROOT /usr/local/rbenv
ENV PATH $RBENV_ROOT/bin:$PATH

# rbenv
RUN \
  git clone git://github.com/sstephenson/rbenv.git ${RBENV_ROOT} && \
  git clone git://github.com/sstephenson/ruby-build.git ${RBENV_ROOT}/plugins/ruby-build

ADD rbenv.sh /etc/profile.d/rbenv.sh

RUN \
  . /etc/profile.d/rbenv.sh && \
  rbenv install 2.1.2 && \
  rbenv global 2.1.2

RUN \
  . /etc/profile.d/rbenv.sh && \
  (echo "gem: --no-rdoc --no-ri" > /etc/gemrc) && \
  gem install bundler && \
  rbenv rehash && \
  bundle config --global jobs 4

CMD ["/usr/bin/supervisord"]

EXPOSE 22
