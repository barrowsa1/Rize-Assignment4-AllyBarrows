
#Uses Node.js 16 as the base image for the application
FROM node:16

#Sets the working directory inside the container
WORKDIR /app

#Copies the package files into the container
COPY package*.json ./

#Installs the application's dependencies
RUN npm install

#Copies the rest of the application files into the container
COPY . .

#Exposes the port the app runs on (makes port 3000 available)
EXPOSE 3000

#Starts the application using the npm start command
CMD ["npm", "start"]
