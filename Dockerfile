FROM --platform=linux/amd64 node:16.20.0

WORKDIR /home/node/stencil-cli

ENV NODE_ENV production

RUN npm -g config set user root

RUN npm install --production -g @bigcommerce/stencil-cli

RUN npm install --production -g grunt-cli
