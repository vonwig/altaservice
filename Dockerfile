#syntax=docker/dockerfile:1.4
FROM alpine:3.14@sha256:560e7a4fa5c891d1830f5591c80b8e472fa6cd386b7254cdf65ccc3249292a34

RUN <<EOF
apk add nodejs=14.19
EOF

COPY ./index.js /

RUN ["node", "index.js"]

