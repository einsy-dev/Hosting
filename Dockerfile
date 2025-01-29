FROM node:18 AS client-builder
WORKDIR /app
COPY client/package*.json ./
RUN npm install
COPY client/. ./
RUN npm run build

FROM nginx:latest
WORKDIR /app
COPY --from=client-builder /app/out /app/client
COPY nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]