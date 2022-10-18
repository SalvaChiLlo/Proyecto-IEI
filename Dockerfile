FROM node:14-bullseye
#FROM node:8.15.0

RUN apt-get install git
WORKDIR /usr/src/app
COPY . .
RUN ls; npm install;
RUN git submodule foreach npm install;

EXPOSE 4200
EXPOSE 9000

ENTRYPOINT ["npm", "run", "start"]
