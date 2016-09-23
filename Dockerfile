FROM openjdk:8-jdk

MAINTAINER abhishekagarwal.iitr@gmail.com

ENV ZOOKEEPER_VERSION 3.4.6
ENV ZOOKEEPER_HOME /opt/zookeeper-"$ZOOKEEPER_VERSION"
ENV PACKAGE_URL http://apache.mirrors.spacedump.net/zookeeper/zookeeper-"$ZOOKEEPER_VERSION"/zookeeper-"$ZOOKEEPER_VERSION".tar.gz 

RUN wget "$PACKAGE_URL" -O /tmp/zookeeper.tgz
RUN tar -zxf /tmp/zookeeper.tgz -C /opt/lib/
COPY conf/* "$ZOOKEEPER_HOME"/conf/
CMD $ZOOKEEPER_HOME/bin/zkServer.sh start-foreground
