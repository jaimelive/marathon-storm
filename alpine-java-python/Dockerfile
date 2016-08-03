FROM anapsix/alpine-java:jre8
MAINTAINER Jaime Live <jaime@live.com.pt>

RUN apk upgrade --update && \
	apk add \
		bash \
		curl \
		gettext \
		jq \
		python \
		py-pip \
		tar && \ 
	rm -rf /tmp/* /var/cache/apk/*