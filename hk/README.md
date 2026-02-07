# Hong Kong Maps

This folder contains map posters of Hong Kong generated with all available themes.

## Location Details

- **City**: Hong Kong
- **Country**: China
- **Coordinates**: 22.3193°N, 114.1694°E
- **Map Radius**: 18,000 meters (default)

## Themes

The following 17 themes are used to generate the maps:

1. **autumn** - Burnt oranges, deep reds, golden yellows
2. **blueprint** - Architectural blueprint aesthetic
3. **contrast_zones** - High contrast urban density
4. **copper_patina** - Oxidized copper aesthetic
5. **emerald** - Lush dark green aesthetic
6. **forest** - Deep greens and sage
7. **gradient_roads** - Smooth gradient shading
8. **japanese_ink** - Minimalist ink wash style
9. **midnight_blue** - Navy background with gold roads
10. **monochrome_blue** - Single blue color family
11. **neon_cyberpunk** - Dark with electric pink/cyan
12. **noir** - Pure black background, white roads
13. **ocean** - Blues and teals for coastal cities
14. **pastel_dream** - Soft muted pastels
15. **sunset** - Warm oranges and pinks
16. **terracotta** - Mediterranean warmth
17. **warm_beige** - Vintage sepia tones

## Generation

To regenerate these maps, run:

```bash
./generate_hong_kong_maps.sh
```

Or manually:

```bash
python3 create_map_poster.py \
    --city "Hong Kong" \
    --country "China" \
    --latitude 22.3193 \
    --longitude 114.1694 \
    --all-themes \
    --output-dir hk
```

## File Naming Convention

Files are named in the format:
```
hong_kong_{theme}_{YYYYMMDD_HHMMSS}.png
```

Example: `hong_kong_neon_cyberpunk_20260205_211500.png`
