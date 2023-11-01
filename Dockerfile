FROM node:14-alpine
WORKDIR /
COPY package*.json app.js ./
RUN npm install
EXPOSE 8080
CMD ["node", "app.js"]