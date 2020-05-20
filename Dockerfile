FROM strapi/strapi:3.0.0-beta.20.3-node12

COPY ./app /srv/app
WORKDIR /srv/app

RUN rm -rf node_modules && npm install --production

CMD ["npm", "run", "start"]
