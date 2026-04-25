FROM node:22-slim
RUN corepack enable
COPY . /app
WORKDIR /app
RUN pnpm install
RUN pnpm run build

ENV TTY=0
ENV CI=true
ENV NODE_ENV=production
ENV PORT=3000
ENV OPENCLAW_STORAGE_TYPE=local

CMD [ "node", "dist/index.js" ]
