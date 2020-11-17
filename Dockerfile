FROM ubuntu:20.04

# Install Wine
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    wine && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Ports needed
EXPOSE 30814/tcp
EXPOSE 30814/udp

# Start server
WORKDIR /config
ENTRYPOINT ["/usr/bin/wine", "/config/BeamMP-Server.exe"]