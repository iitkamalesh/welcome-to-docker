# Start your image with a node base image
FROM node:18-alpine

# Improve image discoverability: Titles and descriptions help users understand the image's purpose in search results or registry listings.
# Provide attribution: Author labels give credit to creators.
# Facilitate documentation: Label information can be incorporated into image
LABEL org.opencontainers.image.title="Hello Docker Learners!" \
      org.opencontainers.image.description="Getting started app" \
      org.opencontainers.image.authors="@iitkamalesh"

# The /some/app directory should act as the main application directory
WORKDIR /some/app

# Copy the app package and package-lock.json file
COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/some/app)
COPY ./src ./src
COPY ./public ./public

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install \
    && npm install -g serve \
    && npm run build \
    && rm -fr node_modules

EXPOSE 3000

# Start the app using serve command
CMD [ "serve", "-s", "build" ]