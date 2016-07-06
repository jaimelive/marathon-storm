FROM alpine:latest
MAINTAINER Jaime Live <jaime@live.com.pt>

ENV WORKDIR /opt/storm
ENV STORM_VERSION 1.0.1
ENV STORM_RELEASE apache-storm-${STORM_VERSION}
ENV STORM_ARCHIVE ${STORM_RELEASE}.tar.gz

RUN apk upgrade --update && \
	apk add \
		bash \
		curl \
		jq \
		openjdk7-jre \
		python \
		tar && \
	rm -rf /tmp/* /var/cache/apk/*

WORKDIR $WORKDIR

RUN	curl -O $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | jq -r '.preferred')/storm/${STORM_RELEASE}/${STORM_ARCHIVE} && \
	tar --strip 1 -zxvf $STORM_ARCHIVE && \
	rm -r $STORM_ARCHIVE && \
	ln -s ${WORKDIR}/bin/storm /bin/storm

