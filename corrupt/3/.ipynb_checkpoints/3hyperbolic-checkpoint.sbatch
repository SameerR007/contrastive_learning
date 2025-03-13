#!/bin/bash
#SBATCH --job-name=3hyperbolic
#SBATCH --output=3hyperbolic_%j.out
#SBATCH --error=3hyperbolic_%j.err
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
papermill 3hyperbolic.ipynb 3hyperbolic_output.ipynb
