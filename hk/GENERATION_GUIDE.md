# Hong Kong Map Generation Guide

This guide explains how to generate Hong Kong maps with all available styles.

## Quick Start

### Option 1: Using GitHub Actions (Recommended)

1. Go to the repository on GitHub
2. Click on the **Actions** tab
3. Select **Generate Hong Kong Maps** workflow from the left sidebar
4. Click **Run workflow** button
5. Select the branch (usually `main` or your current branch)
6. Click the green **Run workflow** button
7. Wait for the workflow to complete (~5-10 minutes)
8. The maps will be automatically committed to the `hk/` folder

### Option 2: Local Generation

If you have the repository cloned locally with internet access:

```bash
# Make the script executable (if not already)
chmod +x generate_hong_kong_maps.sh

# Run the script
./generate_hong_kong_maps.sh
```

Or run manually:

```bash
python3 create_map_poster.py \
    --city "Hong Kong" \
    --country "China" \
    --latitude 22.3193 \
    --longitude 114.1694 \
    --all-themes \
    --output-dir hk
```

## Requirements

- **Internet Access**: Required to fetch map data from OpenStreetMap APIs
- **Dependencies**: Install with `pip install -r requirements.txt` (or use `uv`)
- **Python**: Version 3.11 or higher

## What Gets Generated

The script generates **17 map variations** of Hong Kong, one for each available theme:

1. autumn
2. blueprint
3. contrast_zones
4. copper_patina
5. emerald
6. forest
7. gradient_roads
8. japanese_ink
9. midnight_blue
10. monochrome_blue
11. neon_cyberpunk
12. noir
13. ocean
14. pastel_dream
15. sunset
16. terracotta
17. warm_beige

Each map is saved as a high-resolution PNG file in the `hk/` folder with the naming format:
```
hong_kong_{theme}_{YYYYMMDD_HHMMSS}.png
```

## Map Details

- **Location**: Hong Kong, China
- **Coordinates**: 22.3193°N, 114.1694°E
- **Map Radius**: 18,000 meters (default)
- **Resolution**: 300 DPI
- **Dimensions**: 12" x 16" (default)

## Troubleshooting

### "Failed to resolve nominatim.openstreetmap.org"

This means you don't have internet access or the OpenStreetMap APIs are blocked. Use the GitHub Actions workflow instead.

### "No module named 'matplotlib'"

Install dependencies first:
```bash
pip install -r requirements.txt
```

### Workflow fails with permission errors

Make sure the workflow has write permissions:
1. Go to repository Settings
2. Click Actions → General
3. Scroll to "Workflow permissions"
4. Select "Read and write permissions"
5. Save

## Additional Options

You can customize the generation by modifying `generate_hong_kong_maps.sh` or running the command manually with different parameters:

```bash
# Generate with custom size (e.g., for 4K wallpaper)
python3 create_map_poster.py -c "Hong Kong" -C "China" \
    --latitude 22.3193 --longitude 114.1694 \
    --all-themes --output-dir hk \
    -W 12.8 -H 7.2

# Generate with custom distance (zoom level)
python3 create_map_poster.py -c "Hong Kong" -C "China" \
    --latitude 22.3193 --longitude 114.1694 \
    --all-themes --output-dir hk \
    -d 10000  # 10km radius for closer zoom
```

For more options, see the main [README.md](../README.md) file.
