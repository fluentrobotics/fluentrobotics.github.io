#!/bin/bash
# Makes lighter web copies of every image in tn/images/ (WebP, at most 1200 px on the long side)
# into tn/web/. The site uses the web copy when it exists and falls back to the original otherwise,
# so run this after adding new images:   bash _make_web_images.sh
# Needs ImageMagick (the same tool _make_thumbnails.sh uses). Originals are never changed.
mkdir -p tn/web
shopt -s nullglob nocaseglob
for file in tn/images/*.{jpg,jpeg,png,webp,gif}; do
    name=$(basename "${file%.*}")
    out="tn/web/$name.webp"
    if [ ! -f "$out" ] || [ "$file" -nt "$out" ]; then
        convert "$file" -auto-orient -resize '1200x1200>' -quality 80 "$out" && echo "made $out"
    fi
done
