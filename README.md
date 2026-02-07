# grid-cli

Bash scripts to overlay square or hexagonal grids on images using ImageMagick.

## Requirements

- [ImageMagick](https://imagemagick.org/) (`magick` command) - easiest to install using [Homebrew](https://brew.sh/)

```bash
brew install imagemagick
```

## Installation

```bash
git clone https://github.com/jjsoini/grid-cli.git
cd grid-cli
sudo make install
```

This installs `grid` and `hex` to `/usr/local/bin`. To install elsewhere:

```bash
make install PREFIX=~/.local
```

To uninstall:

```bash
sudo make uninstall
```

## Usage

### Square grid

```
grid input.jpg output.png squares_across [stroke_color] [stroke_width]
```

### Hex grid

```
hex input.jpg output.png hexes_high [stroke_color] [stroke_width]
```

### Parameters

| Parameter | Description | Default |
|---|---|---|
| `input` | Source image | (required) |
| `output` | Output image path | (required) |
| `squares_across` / `hexes_high` | Grid density | (required) |
| `stroke_color` | Grid line color | `rgba(0,0,0,0.5)` |
| `stroke_width` | Grid line width in px | `2` |

### Examples

```bash
# 10-column square grid
grid photo.jpg photo_grid.png 10

# Hex grid, 8 rows high, red lines
hex photo.jpg photo_hex.png 8 red 3
```
