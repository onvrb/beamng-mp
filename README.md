[hub]: https://hub.docker.com/r/onvrb/beamng-mp
[git]: https://github.com/onvrb/beamng-mp

[![Docker Pulls](https://img.shields.io/docker/pulls/onvrb/beamng-mp.svg)][hub]

# [onvrb/beamng-mp][hub]

This is a temporary implementation of a docker image that allows you to run a server for [BeamNG-MP](https://beamng-mp.com/) using [Wine](https://www.winehq.org/).

The server files **are not included** and must be in the `/config` directory.

More information can be found [here](https://wiki.beamng-mp.com/en/home/Server_Mod).

## Docker Compose

```yml
version: '3'

services:
  beamng-mp:
    image: onvrb/beamng-mp
    container_name: beamng-mp
    restart: unless-stopped
    ports:
     - 30814:30814/tcp
     - 30814:30814/udp
    volumes:
      - /path/to/server-files:/config # change it to where BeamMP-Server.exe is located
```

