FROM alpine:3

RUN apk --no-cache add minidlna minidlna-doc bash
RUN mkdir /videos /tvshows
COPY minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT /usr/sbin/minidlnad -d