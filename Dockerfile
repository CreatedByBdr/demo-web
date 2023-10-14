FROM node:18.18.0-alpine3.17
ENV NODE_ENV production
ENV PORT 8080
USER node
WORKDIR /usr/src/app
COPY --chown=node:node package*.json /usr/src/app/
RUN npm ci --only=production
COPY --chown=node:node . /usr/src/app
CMD ["npm", "start"]