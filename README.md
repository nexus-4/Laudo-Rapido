# Laudo-Rapido

## Overview
Laudo-Rapido is a photogrammetry pipeline that processes images using OpenMVG and organizes results for further analysis. It is written in Python and uses several dependencies.

## Dependencies

- Numpy
- OpenCV
- PyQt6
- Open3D

These should be installed in your Python virtual environment.

## Directory Structure

- `photos/` — Input images for photogrammetry.
- `results/` — Output directory for results.
	- `mvg_output/` — Subdirectory for OpenMVG outputs.

## Main Script: `processar.py`

### Purpose
Automates the photogrammetry workflow using OpenMVG tools.

### Steps

1. **Path Setup**
	 - Determines base directory.
	 - Sets up paths for input (`photos/`) and output (`results/mvg_output/`).
	 - Ensures output directory exists.

2. **Pipeline Execution**
	 - Prints status messages for user feedback.
	 - Runs OpenMVG's `SfMInit_ImageListing` to analyze images.

### Usage

```bash
python processar.py
```

### Key Variables

- `base_dir`: Path to the script's directory.
- `photos_dir`: Path to input images.
- `results_dir`: Path to results.
- `mvg_output_dir`: Path to OpenMVG output.

### External Commands

- `openmvg_main_SfMInit_ImageListing`
	- `-i`: Input images directory.
	- `-o`: Output directory.
	- `-f`: Camera model (1 = perspective).

### Output

- Prints progress to console.
- Results saved in `results/mvg_output/`.

## License

MIT License — see `LICENSE` for details.