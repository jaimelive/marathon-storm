FROM jaimelive/alpine-java-python:latest
MAINTAINER Jaime Live <jaime@live.com.pt>

ARG STORM_VERSION
ENV WORKDIR /opt/storm
ENV STORM_RELEASE apache-storm-$STORM_VERSION
ENV STORM_ARCHIVE $STORM_RELEASE.tar.gz

WORKDIR $WORKDIR

RUN	curl -O $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | jq -r '.preferred')/storm/$STORM_RELEASE/$STORM_ARCHIVE && \
	tar --strip 1 -zxf $STORM_ARCHIVE && \
	rm -r $STORM_ARCHIVE && \
	ln -s $WORKDIR/bin/storm /bin/storm

VOLUME /mnt/storm /opt/storm/conf
