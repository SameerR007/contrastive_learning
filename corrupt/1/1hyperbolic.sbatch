#!/bin/bash
#SBATCH --job-name=1hyperbolic
#SBATCH --output=1hyperbolic_%j.out
#SBATCH --error=1hyperbolic_%j.err
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
papermill 1hyperbolic.ipynb 1hyperbolic_output.ipynb
