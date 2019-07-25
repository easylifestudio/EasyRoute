FROM golang:1.7.1-alpine

RUN apk add --no-cache git make openssl
RUN git clone https://github.com/tutumcloud/ngrok.git /ngrok

ADD *.sh /

ENV DOMAIN xxx  # domin
ENV NG_BIN /BinExt
ENV NG_RUN /run
ENV TUNNEL_ADDR :4443
ENV HTTP_ADDR :8081
ENV HTTPS_ADDR :8082

EXPOSE 8081
EXPOSE 8082
EXPOSE 4443
EXPOSE 2222

CMD /bin/sh
