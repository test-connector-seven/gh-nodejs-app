FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY app/package*.json ./
RUN npm ci --only=production

# Copy application code
COPY app/ ./

# Run as non-root user for better security
USER node

# Expose port
EXPOSE 3000

# Start application
CMD ["npm", "start"]