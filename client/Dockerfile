FROM node:latest

WORKDIR /client
COPY . /client

RUN yarn install

EXPOSE 8080

CMD [ "yarn", "run", "dev" ]

# sudo docker build --tag dockerfront .
# sudo docker run --publish 8080:8080 --name df dockerfront:latest