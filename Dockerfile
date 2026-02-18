# Build stage
FROM ruby:3.3-slim AS builder

# Install system dependencies
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    curl \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Gem isolation
ENV BUNDLE_PATH=/usr/local/bundle
ENV BUNDLE_BIN=/usr/local/bundle/bin
ENV PATH="${BUNDLE_BIN}:/node_modules/.bin:${PATH}"

# Install dependencies outside of /app for volume mount compatibility
COPY package.json package-lock.json /
RUN cd / && npm install

COPY Gemfile Gemfile.lock /
RUN bundle install

WORKDIR /app

# Copy the rest of the application
COPY . .

# Build Tailwind CSS (will find node_modules in /)
RUN npm run build:css

# Final stage
FROM ruby:3.3-slim

# Install runtime dependencies
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    curl \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install Jekyll dependencies
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Gem isolation
ENV BUNDLE_PATH=/usr/local/bundle
ENV BUNDLE_BIN=/usr/local/bundle/bin
ENV PATH="${BUNDLE_BIN}:/node_modules/.bin:${PATH}"

WORKDIR /app

# Copy dependencies from builder
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder /node_modules /node_modules
COPY --from=builder /app /app

# Make serve.sh executable
RUN chmod +x /app/scripts/serve.sh

EXPOSE 4000

# Default command to serve Jekyll using serve.sh
CMD ["./scripts/serve.sh", "--host", "0.0.0.0"]
