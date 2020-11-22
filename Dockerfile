FROM node:10.19.0 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run build
CMD ["/start.sh"]
CMD ["npm", "run", "start"]
