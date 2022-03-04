FROM golang:alpine
ENV CGO_ENABLED=0
WORKDIR $GOPATH/src/github.com/flatcar-linux/container-linux-config-transpiler
COPY . .
RUN apk update && apk add --virtual .build-deps bash git make \
    && make \
    && mv bin/ct /usr/bin/ \
    && rm -rf $GOPATH \
    && apk del .build-deps && rm -rf /var/cache/apk

FROM scratch
COPY --from=0 /usr/bin/ct /ct
ENTRYPOINT ["/ct"]
