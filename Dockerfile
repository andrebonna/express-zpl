FROM node:20.18.0

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install
COPY . .
RUN npm run build

CMD ["node", "dist/index.js"]

EXPOSE 3000