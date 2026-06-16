FROM node:20-alpine

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Install n8n globally
RUN npm install -g n8n@latest

# Set working directory
WORKDIR /home/node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
