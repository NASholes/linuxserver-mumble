# linuxserver-mumble

This project implements a mumble-server using the LinuxServer.io base image.
If you're interested in running a mumble-server on a NAS, this is what you want.

## ⚠️**DEPRECATION WARNING**⚠️

This project has been deprecated in favor of [quay.io/jzelinskie/murmur](https://quay.io/jzelinskie/murmur), which is Alpine Linux based and much smaller.

## Usage

```
sudo docker run -d \
  -p 64738:64738 \
  -p 64738:64738/udp \
  -e PGID=100 \
  --restart always \
  --name mumble \
  -v /volume1/docker/mumble-config:/data:rw \
  quay.io/jzelinskie/linuxserver-mumble
```
