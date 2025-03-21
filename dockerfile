# Use the official Node.js image from Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 for the application to be accessible
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
