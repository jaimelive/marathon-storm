FROM jaimelive/storm-base:1.0.1
MAINTAINER Jaime Live <jaime@live.com.pt>

ARG STORM_VERSION

ADD generate_config.sh .
ENV storm.log.dir /tmp

CMD ./generate_config.sh && storm nimbus
