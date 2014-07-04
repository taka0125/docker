FROM taka0125/ubuntu:14.04
MAINTAINER Takahiro Ooishi <taka0125@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends mysql-server-5.5

ADD my.cnf /etc/mysql/my.cnf
ADD init.sh /tmp/init.sh

RUN \
  /bin/bash /tmp/init.sh && \
  rm -f /tmp/init.sh

ADD supervisor-mysql.conf /etc/supervisor/conf.d/mysql.conf

RUN apt-get clean

VOLUME ["/mysql-override"]
ADD start.sh /tmp/start.sh
CMD ["bash", "/tmp/start.sh"]

EXPOSE 3306
