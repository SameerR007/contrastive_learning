#!/bin/bash
#SBATCH --job-name=50le_cam
#SBATCH --output=50le_cam_%j.out
#SBATCH --error=50le_cam_%j.err
#SBATCH --time=10:00:00
#SBATCH --partition=mcml-dgx-a100-40x8 
#SBATCH --qos=mcml  
#SBATCH --gres=gpu:1 

# Load required modules
module load anaconda/3
module load cuda/12.4

# Activate Python environment
source myenv/bin/activate

# Run the Jupyter Notebook using papermill
papermill 50le_cam.ipynb 50le_cam_output.ipynb
