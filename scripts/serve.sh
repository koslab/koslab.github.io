#!/bin/bash

# build-serve.sh - Helper script to build Tailwind CSS and serve Jekyll

echo "🚀 Building Tailwind CSS..."
npm run build:css

echo "✨ Starting Jekyll server..."
# Run Jekyll serve with forwarded arguments.
# Note: If you want Tailwind to watch for changes while Jekyll is running,
# you can run 'npm run watch:css' in a separate terminal or background it here.
bundle exec jekyll serve "$@"
