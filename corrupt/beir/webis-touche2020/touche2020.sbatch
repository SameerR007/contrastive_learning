#!/bin/bash
#SBATCH --job-name=touche2020
#SBATCH --output=touche2020_%j.out
#SBATCH --error=touche2020_%j.err
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
papermill touche2020.ipynb touche2020_output.ipynb
