FROM node:20

WORKDIR /nodeapp

COPY ./package.json .
COPY ./package-lock.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["node","server.js"]