FROM node:23-alpine 

RUN mkdir -p /app 
WORKDIR /app 

COPY package*.json ./
RUN npm install

COPY . . 
RUN npm run build 

EXPOSE 3000 

CMD ["npm", "start"] 