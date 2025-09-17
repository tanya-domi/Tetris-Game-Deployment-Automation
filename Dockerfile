# Use the official Node.js 16 image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies 
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose React development server port
EXPOSE 3000

RUN chmod -R 755 /app

# Start the React app in development mode
CMD ["npm", "start"]



# # Use the official Node.js 16 image as the base image
# FROM node:16

# # Set the working directory inside the container
# WORKDIR /app

# # Copy package.json and package-lock.json (or yarn.lock) to the container
# COPY package*.json ./

# # Install project dependencies
# RUN npm install

# # Copy the rest of the application code to the container
# COPY . .

# # Build the React app
# RUN npm run build

# # Expose the port that the app will run on
# EXPOSE 3000

# # Start the React app when the container starts
# CMD [ "npm", "start" ]

