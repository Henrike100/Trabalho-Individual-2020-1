FROM node:10

WORKDIR /usr/src/client
COPY . .

RUN yarn install

EXPOSE 8080

CMD [ "yarn", "run", "dev" ]

# sudo docker build --tag dockerfront .
# sudo docker run --publish 8080:8080 --name df dockerfront:latest
