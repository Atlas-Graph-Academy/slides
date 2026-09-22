#!/bin/sh
# Edit HTML in this folder directly, then run: ./bump.sh  -> open index.html reloads the current slide.
cd "$(dirname "$0")"
printf 'window.__ECHO_BUILD__={"build":%s,"language":"all","pages":"all","at":"%s"};\nif(window.__echoBuildTick)window.__echoBuildTick(window.__ECHO_BUILD__);\n' "$(date +%s000)" "$(date -u +%Y-%m-%dT%H:%M:%SZ)" > live-reload.js
echo "reload token bumped"
