# --- Stage 1: Build the Static Site ---
FROM hugomods/hugo:std-exts-0.154.5 AS builder

# Set the working directory
WORKDIR /src

# Copy the source code into the container
COPY . .

# Install pnpm and dependencies
# The 'exts' tag includes Node.js and Go
RUN npm install -g pnpm && pnpm install

# Build the site
RUN hugo --minify

# --- Stage 2: Serve with Nginx ---
FROM nginx:alpine

# Copy the static site files from the builder stage
COPY --from=builder /src/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
