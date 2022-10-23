FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt update && \
	apt install -y sudo docker.io

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers && \
	usermod -aG docker jenkins

USER jenkins
