FROM node:22-slim
RUN corepack enable
COPY . /app
WORKDIR /app
RUN pnpm install
RUN pnpm run build
CMD [ "pnpm", "start", "--", "--yes" ]

