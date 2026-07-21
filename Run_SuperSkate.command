#!/bin/bash
cd "$(dirname "$0")"
echo "Super Skate በመክፈት ላይ..."
if command -v npx >/dev/null 2>&1; then
  ( sleep 2 && open "http://localhost:5000" 2>/dev/null || xdg-open "http://localhost:5000" 2>/dev/null ) &
  npx --yes serve -l 5000 .
else
  echo "Node.js አልተገኘም። እባክዎ ከ https://nodejs.org ይጫኑ።"
  read -p "Enter ይጫኑ ለመዝጋት..."
fi
