#!/bin/bash
set -e
cd "$(dirname "$0")" && _base="$PWD"

cd $_base/original
for file in $1*.ttf; do
    echo "[Unhint] -> $file"
    ttfautohint -dF " Unhinted" "$file" "$_base/ttf/${file}"
done

cd $_base/ttf
for file in $1*.ttf; do
    echo "[Woff2] -> $file"
    woff2_compress "$_base/ttf/${file}"
    mv -v "$(basename "$_base/ttf/${file}" .ttf).woff2" $_base/woff2/
done
