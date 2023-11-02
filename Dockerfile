FROM node:14-alpine
WORKDIR /src
COPY package*.json app.js ./
RUN npm install
EXPOSE 8080
CMD ["node", "app.js"]