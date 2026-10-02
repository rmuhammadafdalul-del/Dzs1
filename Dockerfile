FROM node:20-bookworm
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
RUN mkdir -p /app/data
CMD ["npm","start"]
