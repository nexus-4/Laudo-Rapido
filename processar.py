# imports
import os
import subprocess

# --- 1. Path Setup ---
# __file__ é uma variável especial do Python que se refere ao próprio arquivo.
base_dir = os.path.dirname(os.path.abspath(__file__))

photos_dir = os.path.join(base_dir, "photos")
results_dir = os.path.join(base_dir, "results")
mvg_output_dir = os.path.join(results_dir, "mvg_output") # Uma subpasta para organizar a saída do OpenMVG

os.makedirs(mvg_output_dir, exist_ok=True)

# --- 2. Pipeline Execution ---

# Apenas para dar um feedback visual quando rodarmos o script
print("Starting the photogrammetry process...")

# Passo A: Análise das Imagens (OpenMVG)
print("\n[STEP 1] Analyzing images...")

command_1 = [
    "openmvg_main_SfMInit_ImageListing",
    "-i", photos_dir,
    "-o", mvg_output_dir,
    "-f", "1",
]

subprocess.run(command_1, check=True)

print("Step 1 finished successfully.")
