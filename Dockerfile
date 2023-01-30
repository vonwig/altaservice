# syntax=docker/dockerfile:1.4
FROM alpine:3.14

RUN apk add nodejs=14.19

COPY ./index.js /

RUN ["node", "index.js"]

