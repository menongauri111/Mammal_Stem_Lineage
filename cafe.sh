#!/bin/bash
#SBATCH --job-name=Cafe
#SBATCH --partition=defq
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=8
#SBATCH --mem=20g
#SBATCH --time=25:00:00
#SBATCH --output=/gpfs01/home/mbxgc4/OandE/%_%J.out
#SBATCH --error=/gpfs01/home/mbxgc4/OandE/%x_%j.err

source $HOME/.bash_profile

conda activate

conda create -n cafe-env
conda activate cafe-env
conda install -c bioconda cafe=5

#specify data file, and tree
cafe5 -i gpfs01/home/mbxgc4/Data/Proteins/OrthoFinder/Results_Jun27/Orthogroups/cafe_input.tsv -t /gpfs01/home/mbxgc4/MyTree.nwk -o /gpfs01/home/mbxgc4/Data/Proteins/Cafe