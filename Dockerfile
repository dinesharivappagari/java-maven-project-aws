# Use official Node.js image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 8080

# Start the application
CMD ["node", "server.js"]
