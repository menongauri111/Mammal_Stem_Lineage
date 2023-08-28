#!/bin/bash
#SBATCH --job-name=Busco_28
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=8g
#SBATCH --time=120:00:00
#SBATCH --output=/gpfs01/home/mbxgc4/OandE/%x.out
#SBATCH --error=/gpfs01/home/mbxgc4/OandE/%x.err

source $HOME/.bash_profile

conda activate
conda create -n busco-env
conda activate busco-env
conda update -n base conda
conda install python=3.8
conda install -c conda-forge -c bioconda busco=5.4.7
conda install -c conda-forge biopython


#Use Busco for genome analysis
# --force to overwrite the existing files

busco -i ./Data/Files/Aardvark.fna -l eukaryota_odb10 -o ./Data/Busco/Aardvark -m genome --force
busco -i ./Data/Files/Armadillo.fna -l eukaryota_odb10 -o  ./Data/Busco/Armadillo -m genome --force
busco -i ./Data/Files/Chimpanzee.fna/ -l eukaryota_odb10 -o ./Data/Busco/Chimpanzee -m genome --force
busco -i ./Data/Files/Caecilian.fna -l eukaryota_odb10 -o  ./Data/Busco/Caecilian -m genome --force
busco -i ./Data/Files/Common_toad.fna -l eukaryota_odb10 -o ./Data/Busco/Common_toad  -m genome --force
busco -i ./Data/Files/Cape_elephant_Shrew.fna -l eukaryota_odb10 -o ./Data/Busco/Cape_Elephant_Shrew -m genome --force
busco -i ./Data/Files/Sunda_flying_lemur.fna -l eukaryota_odb10 -o ./Data/Busco/Sunda_flying_lemur -m genome --force
busco -i ./Data/Files/Crocodile.fna -l eukaryota_odb10 -o ./Data/Busco/Crocodile -m genome --force
busco -i ./Data/Files/Dolphin.fna -l eukaryota_odb10 -o ./Data/Busco/Dolphin -m genome --force
busco -i ./Data/Files/Elephant.fna -l eukaryota_odb10 -o ./Data/Busco/Elephant -m genome --force
busco -i ./Data/Files/Horse.fna -l eukaryota_odb10 -o  ./Data/Busco/Horse -m genome --force
busco -i ./Data/Files/Echidna.fna -l eukaryota_odb10 -o  ./Data/Busco/Echidna -m genome --force
busco -i ./Data/Files/Human.fna -l eukaryota_odb10 -o ./Data/Busco/Human -m genome --force
busco -i ./Data/Files/Kangaroo_rat.fna -l eukaryota_odb10 -o ./Data/Busco/Kangaroo_rat -m genome --force
busco -i ./Data/Files/Koala.fna -l eukaryota_odb10 -o ./Data/Busco/Koala -m genome --force
busco -i ./Data/Files/Sand_lizard.fna -l eukaryota_odb10 -o ./Data/Busco/Sand_lizard -m genome --force
busco -i ./Data/Files/Manatee.fna -l eukaryota_odb10 -o ./Data/Busco/Manatee -m genome --force
busco -i ./Data/Files/Microbat.fna -l eukaryota_odb10 -o ./Data/Busco/Microbat -m genome --force
busco -i ./Data/Files/Mute_swan.fna -l eukaryota_odb10 -o ./Data/Busco/Mute_swan -m genome --force
busco -i ./Data/Files/Zebra_finch.fna -l eukaryota_odb10 -o ./Data/Busco/Zebra_finch -m genome --force
busco -i ./Data/Files/Tasmanian_devil.fna -l eukaryota_odb10 -o ./Data/Busco/Tasmanian_devil -m genome --force
busco -i ./Data/Files/Platypus.fna -l eukaryota_odb10 -o ./Data/Busco/Platypus -m genome --force
busco -i ./Data/Files/Pangolins.fna -l eukaryota_odb10 -o ./Data/Busco/Pangolins -m genome --force
busco -i ./Data/Files/Rabbit.fna -l eukaryota_odb10 -o ./Data/Busco/Rabbit -m genome --force
busco -i ./Data/Files/Shrews.fna -l eukaryota_odb10 -o ./Data/Busco/Shrews -m genome --force
busco -i ./Data/Files/Sloth.fna  -l eukaryota_odb10 -o ./Data/Busco/Sloth -m genome --force
busco -i ./Data/Files/Tree_shrew.fna -l eukaryota_odb10 -o ./Data/Busco/Tree_shrew -m genome --force
busco -i ./Data/Files/Walrus.fna -l eukaryota_odb10 -o ./Data/Busco/Walrus -m genome --force
busco -i ./Data/Files/Tenrec.fna -l eukaryota_odb10 -o ./Data/Busco/Tenrec -m genome --force
