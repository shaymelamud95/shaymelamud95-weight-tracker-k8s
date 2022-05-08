FROM node:14-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
# RUN npm run initdb
COPY . .

EXPOSE 8080

ENTRYPOINT npm run dev

