#test_
FROM ubuntu
MAINTAINER sri <thinkagain.sri@gmail.com>
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
ADD sshd_config /etc/ssh/sshd_config
USER nobody
WORKDIR /tmp/
ENV exp "srinivas"
EXPOSE 2222
