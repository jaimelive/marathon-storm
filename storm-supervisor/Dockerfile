FROM jaimelive/storm-base:1.0.1
MAINTAINER Jaime Live <jaime@live.com.pt>

ARG STORM_VERSION

RUN pip install supervisor

ADD generate_config.sh .
ADD supervisord.conf .

CMD ./generate_config.sh && supervisord --nodaemon --configuration supervisord.conf