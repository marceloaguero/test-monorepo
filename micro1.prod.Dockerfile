FROM node:12-alpine as dist
WORKDIR /home/node/app
COPY apps apps

FROM node:12-alpine
WORKDIR /home/node/app
COPY --from=dist /home/node/app/apps/micro1 ./dist/apps/micro1
