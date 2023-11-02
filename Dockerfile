# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Build the React app (you can customize this command if needed)
RUN npm run build

# Expose the port on which the app will run (typically 3000)
EXPOSE 3000

# Define the command to start the app (modify as per your app's setup)
CMD ["npm", "start"]
