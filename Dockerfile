
# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Start the React app when the container starts
CMD [ "npm", "start" ]


# # Use Node.js 16 LTS image
# FROM node:16

# # Set working directory
# WORKDIR /app

# # Copy only package files first to leverage Docker cache
# COPY package*.json ./

# # Install dependencies (cached if package*.json unchanged)
# RUN npm ci --legacy-peer-deps

# # Copy the rest of the source code
# COPY . .

# # Build the React app
# RUN npm run build

# # Expose the port
# EXPOSE 3000

# # Start the app
# CMD ["npm", "start"]
