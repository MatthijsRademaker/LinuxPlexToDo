FROM node:18-alpine AS builder
WORKDIR /build
COPY . .
RUN npm install
RUN npm run docs:build

FROM nginx:alpine
COPY --from=builder /build/config/.vitepress/dist /app
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80