FROM anapsix/alpine-java:jre8
MAINTAINER Jaime Live <jaime@live.com.pt>

RUN apk upgrade --update && \
	apk add \
		bash \
		curl \
		gettext \
		jq \
		python \
		tar && \ 
	rm -rf /tmp/* /var/cache/apk/*