FROM node:23-alpine3.19

LABEL maintainer="gabriel"

RUN mkdir /var/node

WORKDIR /var/node

COPY app.js .

EXPOSE 3000

CMD [ "node", "app.js"]