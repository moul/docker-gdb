FROM ubuntu:quantal
MAINTAINER Manfred Touron m@42.am

RUN echo "deb http://archive.ubuntu.com/ubuntu/ quantal main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y gdb gdbserver

ADD run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
EXPOSE 4242
