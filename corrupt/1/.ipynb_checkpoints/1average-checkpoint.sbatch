#!/bin/bash
#SBATCH --job-name=1average
#SBATCH --output=1average_%j.out
#SBATCH --error=1average_%j.err
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
papermill 1average.ipynb 1average_output.ipynb
