FROM java:8-alpine

ENV SBT_VERSION 1.1.0
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

COPY sbt-1.1.0.tgz sbt.tgz

RUN apk add --no-cache --update bash
RUN tar -xvzf sbt.tgz
RUN mv sbt $SBT_HOME
RUN rm -f sbt.tgz
RUN sbt sbtVersion
    
WORKDIR /app