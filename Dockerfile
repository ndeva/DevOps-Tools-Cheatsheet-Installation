# Use official Node.js image
FROM node:${NODE_VERSION:-13}-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy project files
COPY ./project .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 8080

# Set volume for project state
VOLUME /var/lib/project

# Set default command
CMD ["node", "server.js"]
