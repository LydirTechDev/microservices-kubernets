# the base image for our docker container
FROM node:14

# Defining the working directory for our docker container
WORKDIR /app-1

# Copy the package.json file from current directory on host machine to our working directory
COPY package.json .

# Execute npm install to install all the dependencies
RUN npm install

# Copy everything from our local directory to our working directory
COPY . .

# Run command node app.js to start the nodejs server.
CMD ["node", "dist/app.js"]
