FROM node:20-slim

WORKDIR /app

# Copy package.json files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application code
COPY . .

# Create a non-root user and switch to it
RUN useradd -r -u 1001 -g root appuser
USER appuser

# Set environment variables
ENV NODE_ENV production
ENV PORT 8080

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]