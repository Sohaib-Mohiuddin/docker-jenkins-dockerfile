FROM jenkins/agent:alpine-jdk11
USER root
RUN apk add python3 python3-dev py3-pip
RUN apk add nodejs npm
RUN apk add docker && \
    addgroup jenkins docker
USER jenkins