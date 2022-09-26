# syntax=docker/dockerfile:1
FROM node:latest
WORKDIR /opt/Chatuygulaması/server
COPY . .
RUN npm install 
WORKDIR /opt/Chatuygulaması/client
RUN npm install
WORKDIR /opt/Chatuygulaması

CMD ["npm start", "/server","-p" , "9000"]

EXPOSE 3000