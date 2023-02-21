# buildkit: docker buildx create --name=wooden-pickle
# build: docker buildx build --load -t vonwig/altaservice --builder=wooden-pickle

#syntax=docker/dockerfile:1.4
FROM node:alpine3.14

RUN <<EOF
apk add nodejs=14.19
EOF

COPY package*.json /
RUN npm ci

COPY ./index.js /

CMD ["node", "index.js"]

