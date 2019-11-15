FROM alpine/base
RUN apk update \
    && apk upgrade \
    && apk add nginx

EXPOSE 80

STOPSIGNAL SIGTERM

ENTRYPOINT ["nginx", "-g", "daemon off;"]
