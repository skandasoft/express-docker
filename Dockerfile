FROM node:10.10-alpine
RUN npm i -g nodemon

# ENV Host 127.0.0.1
ENV PORT 80
ENV NODE_ENV development
EXPOSE 80

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./package.json /usr/src/app/
RUN npm i -g -f

# CMD [ "npm start"]