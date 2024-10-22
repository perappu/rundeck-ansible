# syntax=docker/dockerfile:1
FROM rundeck/rundeck:5.1.0

USER root

RUN mkdir /var/log/ansible
RUN chown rundeck /var/log/ansible

RUN apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository --yes --update ppa:ansible/ansible && \
  apt-get install -y ansible

USER rundeck