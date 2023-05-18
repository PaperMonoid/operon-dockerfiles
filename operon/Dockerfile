FROM alpine:3.14
RUN adduser --disabled-password operon
COPY . /home/operon
WORKDIR /home/operon
RUN apk update && \
    apk add bash git curl xz sudo && \
    mkdir /nix && \
    chown -R operon /nix && \
    chown -R operon /home/operon && \
    chmod +x /home/operon/setup.sh
RUN /bin/bash /home/operon/setup.sh
