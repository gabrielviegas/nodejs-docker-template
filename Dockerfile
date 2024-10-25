FROM node:23-alpine3.19

LABEL maintainer="gabriel"

HEALTHCHECK CMD \
  curl -sf http://localhost:3000/ || exit 1

RUN adduser -h /var/nodeapp \
      -s /bin/bash \
      -D nodeapp && \
    apk add curl

WORKDIR /var/nodeapp

COPY app.js .
RUN chown nodeapp:nodeapp app.js

EXPOSE 3000

USER nodeapp
CMD [ "node", "app.js"]
