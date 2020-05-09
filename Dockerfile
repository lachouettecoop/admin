FROM strapi/strapi:3.0.0-beta.20.3-node12-alpine

COPY ./app /srv/app
WORKDIR /srv/app

RUN npm install --production

CMD ["npm", "run", "start"]