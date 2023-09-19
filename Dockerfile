FROM alpine:latest

RUN apk --no-cache add minidlna minidlna-doc bash
RUN mkdir /videos /tvshows /music
COPY minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT /usr/sbin/minidlnad
CMD -S -P /tmp/minidlna.pid
