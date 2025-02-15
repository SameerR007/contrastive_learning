#!/bin/bash
#SBATCH --job-name=app_effective
#SBATCH --output=app_effective_%j.out
#SBATCH --error=app_effective_%j.err
#SBATCH --time=03:30:00
#SBATCH --partition=mcml-dgx-a100-40x8 
#SBATCH --qos=mcml  
#SBATCH --gres=gpu:1 

# Load required modules
module load anaconda/3
module load cuda/12.4

# Activate Python environment
source myenv/bin/activate

# Run the Jupyter Notebook using papermill
papermill app_effective.ipynb app_effective_output.ipynb
