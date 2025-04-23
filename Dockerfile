FROM node:18

WORKDIR /usr/src/app

COPY ./src/package.json ./

RUN npm install

COPY ./src ./src

EXPOSE 80

CMD ["node", "src/server.js"]
