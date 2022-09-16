FROM node:alpine As development

# Create app directory
WORKDIR /src

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

RUN npm run build

FROM node:alpine as production

# Create app directory
WORKDIR /src

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --only=production

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
COPY --from=development app-1/src/dist ./dist
 
CMD ["node", "dist/app"]


