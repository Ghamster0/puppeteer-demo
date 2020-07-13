FROM node:12.18.2-alpine

WORKDIR /app

RUN apk add chromium

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser

RUN npm config set registry https://registry.npm.taobao.org
# should run with {args: ['--no-sandbox', '--disable-gpu']}
RUN npm install puppeteer