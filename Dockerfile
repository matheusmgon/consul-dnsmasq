FROM alpine

RUN apk update; apk add --no-cache \
	vim \
	curl \
	wget \
	bind-tools \
	net-tools \
	python3 \
	py3-pip \
	dnsmasq \
	consul

RUN python3 -m pip install supervisor

RUN mkdir -p /etc/supervisor/conf.d

ADD Consul/Server/Supervisord/supervisord.conf /etc/supervisor/supervisord.conf
ADD Consul/Server/Supervisord/conf.d/* /etc/supervisor/conf.d/
ADD Consul/Server/Dnsmasq/dnsmasq.conf /etc/dnsmasq.conf

CMD [ "supervisord", "-c", "/etc/supervisor/supervisord.conf" ]