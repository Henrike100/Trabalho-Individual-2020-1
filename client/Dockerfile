FROM node:10

WORKDIR /usr/src/client
COPY . .

RUN yarn install

EXPOSE 8080

CMD [ "yarn", "run", "dev" ]
