FROM dwolla/jenkins-agent-core
MAINTAINER Dwolla Dev <dev+jenkins-aws-tools@dwolla.com>
LABEL org.label-schema.vcs-url="https://github.com/Dwolla/jenkins-agent-docker-awscli"

USER root
RUN apk add --update python py-pip python-dev && \
    pip install awscli
USER jenkins
