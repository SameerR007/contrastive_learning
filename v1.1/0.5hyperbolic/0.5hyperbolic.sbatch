#!/bin/bash
#SBATCH --job-name=0.5hyperbolic
#SBATCH --output=0.5hyperbolic_%j.out
#SBATCH --error=0.5hyperbolic_%j.err
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
papermill 0.5hyperbolic.ipynb 0.5hyperbolic_output.ipynb
