# Using node alpine as the official base image
FROM node:14.9.0-alpine3.10

# Set the working directory
WORKDIR /app

# Add /app/node_modules/.bin to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY . ./
RUN npm install

CMD ["npm", "start"]
