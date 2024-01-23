FROM node:20.9.0-bullseye-slim
WORKDIR /usr/src/app

EXPOSE 3000

CMD [ "npx", "nodemon", "index.js" ]

COPY package*.json /usr/src/app/
RUN npm install

COPY . /usr/src/app/