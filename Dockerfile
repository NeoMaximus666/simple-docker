#FROM ubuntu:22.04

#CMD ["echo", "Hello Simple Docker!"]
#CMD ["ls", "-lah"]

FROM node:16

WORKDIR /app

COPY . /app

RUN npm install

#CMD ["ls", "-lah"]
CMD ["npm", "start"]