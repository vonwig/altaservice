#syntax=docker/dockerfile:1.4
FROM alpine:3.14@sha256:fa26727c28837d1471c2f1524d297a0255c153b5d023d7badd1412be7e6e12a2

RUN <<EOF
apk add nodejs=14.19
EOF

COPY ./index.js /

RUN ["node", "index.js"]

