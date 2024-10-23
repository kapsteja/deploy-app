# Use an official Node.js runtime as a base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install application dependencies
RUN npm install --production

# Copy the application code to the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
