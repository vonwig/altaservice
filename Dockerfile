# docker buildx create --name=wooden-pickle
# docker buildx build --load -t vonwig/altaservice --builder=wooden-pickle .

#syntax=docker/dockerfile:1.4
FROM node:alpine3.14@sha256:a648bbe9a0af3991ef1bf02208b2e9b04b4bad49790efc5740a43d13cd1482b5

RUN <<EOF
apk add nodejs=14.19
EOF

COPY package*.json /
RUN npm ci

COPY ./index.js /

EXPOSE 3000

CMD ["node", "index.js"]

