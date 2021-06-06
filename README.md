# docker-jenkins-dockerfile

This Dockerfile creates an image containing Jenkins with Docker Client installed.

Omitted Command: groupadd -g [docker_GID] docker
- This omission assumes:
  - Docker is installed on current machine
  - *groupadd -g [docker_GID] docker* has already been run on machine
- Omission occurred due to issues in docker permission inside created container. 

Potential Dockerfile with omitted command (May Not Work):
```Dockerfile
FROM jenkins/jenkins:lts

USER root

RUN apt update && \
        apt install -y sudo docker.io

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers && \
        groupadd -g [docker_GID] docker && \
        usermod -aG docker jenkins

USER jenkins
```