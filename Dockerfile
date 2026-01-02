# Use Bun for runtime
FROM oven/bun:1-slim

WORKDIR /app

# Copy package files
COPY package.json bun.lock ./

# Install all dependencies (including platform-specific binaries)
RUN bun install --frozen-lockfile

# Copy application source
COPY src ./src
COPY routes ./routes
COPY public ./public
COPY index.html ./
COPY vite.config.ts tailwind.config.js postcss.config.js ./
COPY tsconfig.json tsconfig.node.json zap.config.ts ./

# Build frontend with Vite first
RUN bun run build:vite

# Then build with zap (copies binary, creates config)
RUN bun run build || true

# Expose port
EXPOSE 3000

# Run production server
CMD ["bun", "run", "serve"]
