FROM node:23-alpine 

RUN mkdir -p /app 
WORKDIR /app 

COPY . . 

RUN npm install && npm run build 

EXPOSE 3000 

CMD ["npm", "start"] 