# Using the official Node.js image
FROM node:18

WORKDIR /app

COPY package*.json ./

# Installing dependencies
RUN npm install
COPY . .
# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
