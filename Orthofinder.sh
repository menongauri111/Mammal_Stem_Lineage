#!/bin/bash
#SBATCH --job-name=Whole_genomes
#SBATCH --partition=defq
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=10
#SBATCH --mem=30g
#SBATCH --time=100:00:00
#SBATCH --output=/gpfs01/home/mbxgc4/OandE/%x.out
#SBATCH --error=/gpfs01/home/mbxgc4/OandE/%x.err

source $HOME/.bash_profile

conda activate
conda create -n ortho-env
conda activate ortho-env
conda install -c bioconda orthofinder

#install diamond dependency manually to resolve error after installing conda package

wget https://github.com/bbuchfink/diamond/releases/latest/download/diamond-linux64.tar.gz
tar xzf diamond-linux64.tar.gz
mkdir ~/bin
cp diamond ~/bin
export PATH=$PATH:~/bin/


#run orthofinder on 29 selected species
orthofinder -t 8 -f ./Data/Proteins #provide path to the folder containing .fna files
