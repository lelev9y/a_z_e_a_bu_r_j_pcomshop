FROM node:alpine

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apk update && \
    apk add --no-cache curl && \
    chmod 777 /app/index.js && \
    chmod -R 777 /app && \
    npm install

CMD ["node", "index.js"]
