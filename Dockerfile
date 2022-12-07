#FROM ubuntu:22.04

#CMD ["echo", "Hello Simple Docker!"]
#CMD ["ls", "-lah"]

FROM node:16

WORKDIR /app

RUN npm install -g pnpm

COPY . /app

RUN pnpm install

#CMD ["ls", "-lah"]
CMD ["pnpm", "start"]