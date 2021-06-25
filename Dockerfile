FROM alpine
LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache privoxy
COPY entrypoint.sh /bin/

EXPOSE 8118
ENTRYPOINT [ "entrypoint.sh" ]
