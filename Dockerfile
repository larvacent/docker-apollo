FROM openjdk:8-jre

LABEL maintainer="support@larvacent.com"

ARG APOLLO_VERSION

ENV APOLLO_VERSION=${APOLLO_VERSION:-1.7.1}

RUN set -x \
	cd /tmp \
	&& curl -fSL https://www-us.apache.org/dist/activemq/activemq-apollo/${APOLLO_VERSION}/apache-apollo-${APOLLO_VERSION}-unix-distro.tar.gz  -o apache-apollo-${APOLLO_VERSION}-unix-distro.tar.gz \
	&& tar -xJvf apache-apollo-${APOLLO_VERSION}-unix-distro.tar.gz -C /usr/local && rm -rf apache-apollo-${APOLLO_VERSION}-unix-distro.tar.gz