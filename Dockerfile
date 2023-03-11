FROM node:18.15.0-alpine3.17
ENV NODE_ENV production
USER node
WORKDIR /usr/src/app
COPY --chown=node:node package*.json /usr/src/app/
RUN npm ci --only=production
COPY --chown=node:node . /usr/src/app
CMD ["npm", "start"]