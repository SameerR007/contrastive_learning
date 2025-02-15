#!/bin/bash
#SBATCH --job-name=train_model
#SBATCH --output=train_model_%j.out
#SBATCH --error=train_model_%j.err
#SBATCH --time=03:30:00
#SBATCH --partition=mcml-dgx-a100-40x8 
#SBATCH --qos=mcml  
#SBATCH --gres=gpu:1 

# Load required modules
module load anaconda/3
module load cuda/12.4

# Activate Python environment
source activate myenv

# Run the Jupyter Notebook using papermill
papermill app.ipynb app_output.ipynb
