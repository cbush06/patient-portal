FROM node

RUN mkdir /opt/app
COPY package.json /opt/app
COPY dist/  /opt/app/dist
COPY server.js /opt/app

WORKDIR /opt/app

RUN npm install

ENV NODE_ENV=production
ENV PORT=8080

ENTRYPOINT ["npm", "run", "serve"]