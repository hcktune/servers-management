FROM debian:latest

RUN apt-get update -y && apt-get install nginx python3  openssh-server -y
RUN mkdir /var/run/sshd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
EXPOSE 22 80
CMD service nginx start && /usr/sbin/sshd -D
