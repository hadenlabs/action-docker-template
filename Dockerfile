FROM alpine:3.13

ENV BASE_DEPS \
    alpine-sdk \
    bash \
    build-base \
    git \
    jq \
    curl \
    grep \
    coreutils

RUN apk --no-cache add $BASE_DEPS

COPY provision/script/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
