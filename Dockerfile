FROM node:14 
#official node.js image from dockerhub

WORKDIR C:\Users\User\Docker Tutorial\docker-tutorial-1\app.js
#application directory

COPY package.json ./
#copy package.json

RUN npm install
#install dependencies

COPY . . 
#Copy application code

EXPOSE 3000
#Bind app to port 3000

CMD ["npm", "start"]
#define command to run app
