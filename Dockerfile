# Use Node 18 as base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose the port your app uses
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
