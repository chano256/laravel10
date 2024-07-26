FROM jenkins/jenkins:lts-jdk17

ARG UID
ARG GID
ARG USER

ENV UID=${UID}
ENV GID=${GID}
ENV USER=${USER}

USER root
RUN apt-get update && apt-get install -y ruby make

USER jenkins
