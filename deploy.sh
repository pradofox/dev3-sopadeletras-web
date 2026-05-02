#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "→ build limpio..."
rm -rf dist .astro
npm run build

echo ""
echo "→ deployando a Cloudflare..."
npx wrangler deploy --config dist/server/wrangler.json

echo ""
echo "✓ live en https://dev3.sopadeletras.art"
