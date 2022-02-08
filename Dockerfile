FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y \
    && apt-get install -y sudo --no-install-recommends

RUN echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers

ENTRYPOINT ["/entrypoint.sh"]
