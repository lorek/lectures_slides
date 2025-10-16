#!/bin/bash
# Loop over all PDFs matching the pattern.
for file in ch3_ellipsoid3D*.pdf; do
    # Use parameter expansion to remove .pdf and add _cropped.pdf
    output="${file%.pdf}_cropped.pdf"
    echo "Cropping $file -> $output"
    pdfcrop "$file" "$output"
done
