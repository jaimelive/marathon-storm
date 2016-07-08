FROM alpine:latest
MAINTAINER Jaime Live <jaime@live.com.pt>

RUN apk upgrade --update && \
	apk add \
		bash \
		curl \
		jq \
		openjdk8-jre \
		python \
		tar && \ 
	rm -rf /tmp/* /var/cache/apk/*