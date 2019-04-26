# statsd uses modern-syslog which breaks after 8
FROM node:6
WORKDIR /app
EXPOSE 8126
EXPOSE 8125/udp
COPY package.json package-lock.json ./
RUN npm install
COPY config ./
CMD npm start
