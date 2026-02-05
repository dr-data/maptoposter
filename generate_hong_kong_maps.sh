#!/bin/bash

# Script to generate Hong Kong maps with all available themes
# 
# Hong Kong coordinates:
# Latitude: 22.3193
# Longitude: 114.1694
#
# This script generates maps for all 17 available themes and saves them to the 'hk' folder.

set -e

echo "===================================================="
echo "Generating Hong Kong Maps with All Themes"
echo "===================================================="

# Ensure we are in the project root
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Create hk directory if it doesn't exist
mkdir -p hk

# Hong Kong coordinates
CITY="Hong Kong"
COUNTRY="China"
LAT="22.3193"
LON="114.1694"

echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Coordinates: $LAT, $LON"
echo "Output directory: hk/"
echo ""

# Check if uv is available, otherwise use python3
if command -v uv &> /dev/null; then
    echo "Using uv to run the script..."
    PYTHON_CMD="uv run python3"
else
    echo "Using python3 directly..."
    PYTHON_CMD="python3"
fi

# Generate maps with all themes
echo "Generating maps for all themes..."
$PYTHON_CMD create_map_poster.py \
    --city "$CITY" \
    --country "$COUNTRY" \
    --latitude "$LAT" \
    --longitude "$LON" \
    --all-themes \
    --output-dir hk

echo ""
echo "===================================================="
echo "✓ Hong Kong map generation complete!"
echo "Maps saved to: hk/"
echo "===================================================="

# List generated files
echo ""
echo "Generated files:"
ls -lh hk/
