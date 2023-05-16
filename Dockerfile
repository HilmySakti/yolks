FROM node:alpine
COPY . /app
WORKDIR /app
CND node app.js
