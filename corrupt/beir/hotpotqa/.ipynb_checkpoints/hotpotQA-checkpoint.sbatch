#!/bin/bash
#SBATCH --job-name=hotpotQA
#SBATCH --output=hotpotQA_%j.out
#SBATCH --error=hotpotQA_%j.err
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
papermill hotpotQA.ipynb hotpotQA_output.ipynb
