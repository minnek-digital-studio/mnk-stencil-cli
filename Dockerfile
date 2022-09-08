# Dockerfile

# Use official node parent image
FROM --platform=linux/amd64 node:14

# Set container working directory
WORKDIR /theme

# Install stencil cli latest version
RUN npm -g config set user root
RUN npm install -g @bigcommerce/stencil-cli

# Install theme dependencies
RUN npm i

# Default command
ENTRYPOINT ["stencil"]
CMD ["--help"]

# Publish cli default port
EXPOSE 3000
