FROM jaimelive/storm-base:1.0.1
MAINTAINER Jaime Live <jaime@live.com.pt>

ARG STORM_VERSION

ADD generate_config.sh .

CMD ./generate_config.sh && storm supervisor