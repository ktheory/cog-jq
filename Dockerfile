FROM alpine:3.4

RUN apk add --no-cache jq

ADD cog-jq /usr/bin/cog-jq

CMD /usr/bin/cog-jq
