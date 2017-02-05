FROM alpine:latest
RUN apk update && apk add tor
VOLUME ["/etc/tor"]
EXPOSE 9050
CMD /usr/bin/tor -f /etc/tor/torrc
