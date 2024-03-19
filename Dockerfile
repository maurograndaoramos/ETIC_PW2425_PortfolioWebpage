# syntax=docker/dockerfile:1

FROM node:18-alpine
COPY ./src/ ./webApp
WORKDIR /webApp
RUN yarn global add http-server
CMD ["http-server", ".", "-p", "3000"]
EXPOSE 3000
