#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh

# hide the evidence
clear

# Put your stuff here
PROMPT_TIMEOUT=0
wait
pe 'git clone https://github.com/matthewberryman/dinodigging'
pe 'cd dinodigging'
pe 'sbatch run.sh'
pe 'tail -f slurm-2.out'
pe 'git clone -b summit-demo https://github.com/AcrossTheCloud/alces-flight-odm'
pe 'cd alces-flight-odm'
pe 'alces storage enable s3'
pe 'alces storage configure odm-s3 s3'
pe 'alces storage use odm-s3'
pe 'alces storage get -r s3://acrossthecloud-example-s3/odm-input-data/ .'
pe 'bash odm_run_example.sh'
pe 'cat slurm*.out'
