FROM node:12-alpine

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

# Copy app contents into build
COPY . .

# Run the App
EXPOSE 3000
CMD [ "node", "app.js" ]