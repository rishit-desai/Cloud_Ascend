FROM node:14-alpine
WORKDIR /src
COPY package*.json app.js index.html ./
RUN npm install
EXPOSE 8080
CMD ["node", "app.js"]