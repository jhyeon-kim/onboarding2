FROM node:alpine
#WORKDIR /usr/src/app
WORKDIR /usr/
COPY package*.json .
RUN npm ci
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
