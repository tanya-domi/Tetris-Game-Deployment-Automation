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

