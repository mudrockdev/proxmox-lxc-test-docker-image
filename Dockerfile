FROM node:20-alpine3.20

WORKDIR /app

COPY . .

RUN npm i -g pnpm
RUN pnpm i && pnpm run build

CMD [ "pnpm", "serve", "./dist", "-p", "2050" ]

EXPOSE 2050