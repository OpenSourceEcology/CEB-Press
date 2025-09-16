# GitHub Actions Workflows

## Generate Assembly Image

This workflow automatically generates a PNG image from the `v2509P/~ASSEMBLY.scad` file and updates the main README.md to include the rendered assembly image.

### When it runs:
- On pushes to main/master branch when any SCAD files in the `v2509P/` directory are modified
- On pull requests targeting main/master branch when any SCAD files in the `v2509P/` directory are modified  
- Manually via workflow dispatch

### What it does:
1. Installs OpenSCAD on the Ubuntu runner
2. Uses xvfb (virtual framebuffer) to provide a display for OpenSCAD rendering
3. Renders the `~ASSEMBLY.scad` file to a PNG image with optimized camera settings
4. Updates the README.md to include the assembly image (if not already present)
5. Commits and pushes the generated image and updated README back to the repository

### Output:
- `v2509P/assembly.png` - Rendered assembly image (1024x768 resolution)
- Updated `README.md` with embedded assembly image

## Generate CNC Layout SVG

This workflow automatically generates an SVG image from the `v2509P/~CNCLAYOUT.scad` file and updates the main README.md to include the rendered CNC cutting layout.

### When it runs:
- On pushes to main/master branch when any SCAD files in the `v2509P/` directory are modified
- On pull requests targeting main/master branch when any SCAD files in the `v2509P/` directory are modified  
- Manually via workflow dispatch

### What it does:
1. Installs OpenSCAD on the Ubuntu runner
2. Uses xvfb (virtual framebuffer) to provide a display for OpenSCAD rendering
3. Renders the `~CNCLAYOUT.scad` file to an SVG image with top-down orthographic projection
4. Updates the README.md to include the CNC layout SVG (if not already present)
5. Commits and pushes the generated SVG and updated README back to the repository

### Output:
- `v2509P/cnclayout.svg` - Rendered CNC cutting layout (2048x1536 resolution)
- Updated `README.md` with embedded CNC layout SVG

Both workflows use the `[skip ci]` tag in commit messages to prevent infinite loops.