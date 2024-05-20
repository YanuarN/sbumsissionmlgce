FROM node:20-bullseye
WORKDIR /app
COPY package*.json ./
COPY .env ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "start" ]
