#!/bin/bash
#SBATCH --job-name=baseline
#SBATCH --output=baseline_%j.out
#SBATCH --error=baseline_%j.err
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
papermill TREC_covid.ipynb TREC_covid_output.ipynb
