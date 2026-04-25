FROM node:22-slim
RUN corepack enable
COPY . /app
WORKDIR /app
RUN pnpm install
RUN pnpm run build
ENV TTY=0
CMD [ "node", "dist/index.js" ]
