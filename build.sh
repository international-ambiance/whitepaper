#!/bin/bash

# Build script for IA-Token whitepaper
# Compiles the LaTeX source to PDF

set -e

echo "🔨 Building IA-Token Whitepaper..."

# Check if pdflatex is available
if ! command -v pdflatex &> /dev/null; then
    echo "❌ Error: pdflatex not found"
    echo "Please install a LaTeX distribution (TeX Live, MiKTeX, or MacTeX)"
    echo ""
    echo "Alternatively, use Docker:"
    echo "  docker run --rm -v \$(pwd):/data texlive/texlive:latest pdflatex -output-directory=/data /data/ia-token-whitepaper.tex"
    exit 1
fi

# Clean up auxiliary files from previous builds
echo "🧹 Cleaning up old build files..."
rm -f *.aux *.log *.out *.toc *.pdf

# First pass
echo "📄 Running pdflatex (first pass)..."
pdflatex -interaction=nonstopmode -halt-on-error ia-token-whitepaper.tex

# Second pass (for TOC and references)
echo "📄 Running pdflatex (second pass for TOC)..."
pdflatex -interaction=nonstopmode -halt-on-error ia-token-whitepaper.tex

# Clean up auxiliary files
echo "🧹 Cleaning up auxiliary files..."
rm -f *.aux *.log *.out *.toc

# Check if PDF was created
if [ -f "ia-token-whitepaper.pdf" ]; then
    echo "✅ Success! PDF created: ia-token-whitepaper.pdf"

    # Show file size
    if command -v du &> /dev/null; then
        SIZE=$(du -h ia-token-whitepaper.pdf | cut -f1)
        echo "📊 File size: $SIZE"
    fi

    # Count pages (if pdfinfo is available)
    if command -v pdfinfo &> /dev/null; then
        PAGES=$(pdfinfo ia-token-whitepaper.pdf | grep "Pages:" | awk '{print $2}')
        echo "📖 Pages: $PAGES"
    fi
else
    echo "❌ Error: PDF was not created"
    exit 1
fi

echo ""
echo "🎉 Build complete!"
