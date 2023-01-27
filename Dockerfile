# syntax=docker/dockerfile:1.4
FROM alpine:3.14

RUN <<EOF
apk add nodejs=1
EOF

