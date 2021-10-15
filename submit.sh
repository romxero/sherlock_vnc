#!/bin/bash
#SBATCH -p serc 
#SBATCH --job-name=sherlock_vnc
#SBATCH --output=sherlock_vnc_%A_%a.out
#SBATCH --error=sherlock_vnc_%A_%a.err
#SBATCH --time=02:05:00
#SBATCH -c 4
#SBATCH --mem=16G
#SBATCH --nodes=1
##SBATCH --mail-type=BEGIN,END,FAIL # job notifications
##SBATCH --mail-user=your_sunet_id@stanford.edu


ml purge



export SINGULARITY_BIND="/share,/etc/profile.d"


singularity exec /oak/stanford/schools/ees/share/cees/software/sherlock_vpn/sherlock_vnc.sif vncserver -xstartup "startxfce4" 

###infinite loop to sleep.
while [ true ]
do 
sleep 55
done
