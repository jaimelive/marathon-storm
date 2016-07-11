FROM jaimelive/alpine-java-python:latest
MAINTAINER Jaime Live <jaime@live.com.pt>

ARG STORM_VERSION
ENV STORM_HOME /opt/storm
ENV STORM_RELEASE apache-storm-$STORM_VERSION
ENV STORM_ARCHIVE $STORM_RELEASE.tar.gz
ENV PATH $STORM_HOME/bin:$PATH

WORKDIR $STORM_HOME

RUN	curl -O $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | jq -r '.preferred')/storm/$STORM_RELEASE/$STORM_ARCHIVE && \
	tar --strip 1 -zxf $STORM_ARCHIVE && \
	rm -r $STORM_ARCHIVE
