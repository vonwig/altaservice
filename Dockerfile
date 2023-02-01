#syntax=docker/dockerfile:1.4
FROM alpine:3.14

RUN <<EOF
apk add nodejs=14.19
EOF

COPY ./index.js /

RUN ["node", "index.js"]

