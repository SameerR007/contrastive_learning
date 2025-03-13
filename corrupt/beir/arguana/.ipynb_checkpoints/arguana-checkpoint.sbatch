#!/bin/bash
#SBATCH --job-name=arguana
#SBATCH --output=arguana_%j.out
#SBATCH --error=arguana_%j.err
#SBATCH --time=12:00:00
#SBATCH --partition=mcml-dgx-a100-40x8 
#SBATCH --qos=mcml  
#SBATCH --gres=gpu:1 

# Load required modules
module load anaconda/3
module load cuda/12.4

# Activate Python environment
source myenv/bin/activate

# Run the Jupyter Notebook using papermill
papermill arguana.ipynb arguana_output.ipynb
