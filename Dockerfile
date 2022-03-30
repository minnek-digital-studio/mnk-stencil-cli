# Dockerfile

# Use official node parent image
FROM node:12

# Set container working directory
WORKDIR /theme

# Install stencil cli
RUN npm -g config set user root
RUN npm install -g @bigcommerce/stencil-cli

# Install theme dependencies
RUN npm i

# Default command
ENTRYPOINT ["stencil"]
CMD ["--help"]

# Publish cli default port
EXPOSE 3000
