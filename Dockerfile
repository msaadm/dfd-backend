# Creating Container from image (in this case it's node)
FROM node 

# Make directory for TRAVIS CI
RUN mkdir /usr/src/app

# Setting up the Working Directory
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Copy package.json file to root of WORKDIR
COPY package*.json /usr/src/app/

# Run this command to install npm packages
RUN npm install

# Copy all source code to the root of WORKDIR
COPY . /usr/src/app/

# Open Port 4000 to access out of the container
EXPOSE 4000

# Finally Run to command to start the App
CMD ["npm","start"]