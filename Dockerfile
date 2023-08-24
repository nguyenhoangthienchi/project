FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
COPY . .
EXPOSE 3000

# Set the command to run the app
CMD ["npm", "run", "dev"]