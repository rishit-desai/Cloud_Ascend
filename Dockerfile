FROM node:14-alpine
WORKDIR /
COPY package*.json app.js ./
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]