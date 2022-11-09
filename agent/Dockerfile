FROM jenkins/agent:alpine
USER root

RUN apk add python3 python3-dev py3-pip
RUN apk add nodejs npm
RUN apk add docker openrc
RUN rc-update add docker boot

USER jenkins