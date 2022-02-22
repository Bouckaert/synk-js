FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install \
&& npm init -y \
&& npm install express \
&& npm install pug


COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
