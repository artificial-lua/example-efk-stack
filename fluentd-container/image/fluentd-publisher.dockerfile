FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive

WORKDIR /fluentd

# Install Fluentd
RUN apt update -y
RUN apt install curl -y
RUN apt install systemctl -y
RUN apt install sudo -y
RUN curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-focal-td-agent4.sh | sh

COPY startup.sh ./startup.sh
RUN chmod +x ./startup.sh

CMD ["bash", "./startup.sh"]