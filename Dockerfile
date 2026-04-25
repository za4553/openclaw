FROM node:22-slim
RUN corepack enable
COPY . /app
WORKDIR /app
RUN pnpm install
RUN pnpm run build

# Crucial settings for Railway
ENV TTY=0
ENV CI=true
ENV NODE_ENV=production
ENV PORT=3000

# This starts the bot directly
CMD [ "node", "dist/index.js" ]
