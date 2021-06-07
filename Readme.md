# Consul DNS
![image](consul-dnsmasq.png)
## Project
In this project, we are using thow tecnologies: "Consul" and "Dnsmasq".
Consul Server for default use port 8600 to resolv "internal domains", but this por not default for dns service, so we use dnsmaq service for purpose it.
### How to
Clone this project
for this project work, you need install docker and docker-compose.
```sh
curl -fsSl https://get.docker.com | sh
```
Docker-Compose Debian/Ubuntu
```sh
apt-get install docker-compose
```
Red Hat, CentOs
```sh
yum install docker-compose
```
whell.. after all tecnologies installed in yout machine, start procject
```sh
docker-compose up -d
```