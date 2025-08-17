# Build stage
FROM node:20-alpine as builder

WORKDIR /app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies with clean npm cache
RUN npm ci && \
    npm cache clean --force

# Copy only necessary files
COPY . .

# Build the application and verify output
RUN npm run build && \
    ls -la .output/server && \
    echo "Build completed - checking for index.mjs" && \
    ls -la .output/server/index.mjs

# Production stage
FROM node:20-alpine

WORKDIR /app

# Copy the entire .output directory
COPY --from=builder /app/.output/ ./.output/
RUN ls -la .output/server && \
    echo "Production stage - checking for index.mjs" && \
    ls -la .output/server/index.mjs

# Copy package files
COPY --from=builder /app/package*.json ./

# Install only production dependencies
RUN npm ci --only=production && \
    npm cache clean --force

# Expose the port 3000
EXPOSE 3000

# Run the application
CMD ["node", ".output/server/index.mjs"]