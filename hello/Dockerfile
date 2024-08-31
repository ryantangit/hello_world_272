# Dockerfile

# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the dependencies in the container
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 4445

# Define the command to run the application
CMD ["node", "index.js"]
