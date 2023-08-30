FROM --platform=linux/amd64 node:18

WORKDIR /home/node/app

ENV NODE_ENV production

RUN npm install --production -g @bigcommerce/stencil-cli@latest

RUN npm install --production -g grunt-cli
