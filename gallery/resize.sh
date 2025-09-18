#!/bin/bash

for img in *.jpg; do
  magick "$img" -resize 3000x -quality 75 "$img"

  # Create thumb
  base="${img%.*}"
  ext="${img##*.}"
  thumb="${base}_thumb.${ext}"
  magick "$img" -resize 300x "$thumb"
done
