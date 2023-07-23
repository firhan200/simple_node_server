#get nodejs image
FROM node:16.13-alpine

#set working directory
WORKDIR /var/www/simple_node_server

#get package json to get list of packages
COPY package*.json .

#install dependencies
RUN npm install

#copy all file
COPY . .

#exposing port
EXPOSE 3000