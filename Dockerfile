FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]


COPY . .


RUN npm install


CMD [ "node", "src/server.js" ]
