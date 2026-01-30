#!/bin/bash

#This script creates a environment where all the libraries required are installed. 
#if you  cannot run the script make sure that you have done:
#chmod +x create_environment.sh
#then it can be run with: ./create_environment.sh
curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
eval "$(./bin/micromamba shell hook -s bash)"

micromamba create -y -p ./labenv python=3.13.7

micromamba activate ./labenv

micromamba install -y numpy scipy matplotlib matplotlib-inline panel jupyter notebook ipython

git clone https://github.com/emilost/Phonon-labs
cd Phonon-labs
jupyter notebook
#Now open the file: RunnerPhonon.ipynb
