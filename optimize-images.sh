#!/bin/bash

# Image optimization script for Jardin de Monchy
# Creates WebP versions at retina-ready sizes

cd /Users/cas/clawd/projects/jardin/images

# Create optimized directory
mkdir -p optimized/gallery optimized/portraits optimized/logo

# Function to optimize image
optimize_image() {
    local src="$1"
    local dest="$2"
    local max_width="${3:-1600}"
    
    # Convert to WebP with quality 85 for good balance
    # Resize to max width while maintaining aspect ratio
    sips -Z "$max_width" "$src" --out /tmp/temp_resize.jpg 2>/dev/null
    
    # Use cwebp if available, otherwise use sips
    if command -v cwebp &> /dev/null; then
        cwebp -q 85 /tmp/temp_resize.jpg -o "$dest" 2>/dev/null
    else
        # Fallback: just resize with sips
        sips -s format jpeg -s formatOptions 85 -Z "$max_width" "$src" --out "${dest%.webp}.jpg" 2>/dev/null
    fi
}

echo "Optimizing gallery images..."

# Gallery images - max 1600px for retina (displays at 800px)
for img in gallery/*.{jpg,jpeg,png,PNG,JPG,JPEG} 2>/dev/null; do
    [ -f "$img" ] || continue
    base=$(basename "$img")
    echo "Processing: $base"
    sips -s format jpeg -s formatOptions 80 -Z 1600 "$img" --out "optimized/gallery/${base%.*}.jpg" 2>/dev/null
done

# Portrait images - max 1200px
for img in portraits/*.{jpg,jpeg,png,PNG} 2>/dev/null; do
    [ -f "$img" ] || continue
    base=$(basename "$img")
    echo "Processing portrait: $base"
    sips -s format jpeg -s formatOptions 85 -Z 1200 "$img" --out "optimized/portraits/${base%.*}.jpg" 2>/dev/null
done

# Logo images - keep as PNG but optimize
for img in logo/*.{png,PNG} 2>/dev/null; do
    [ -f "$img" ] || continue
    base=$(basename "$img")
    echo "Processing logo: $base"
    cp "$img" "optimized/logo/$base"
done

echo "Done! Check optimized/ folder"
