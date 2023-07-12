#This script submits CONUS-12 job via sbatch script
echo 'SLURM WRF CONUS - 12 km model loaded, submitting a Job...'
sbatch slurm-wrf-conus12km.sh
sleep 10
echo '...WRF Job submitted, checking status...'
squeue
# Sample output:
# JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
# 5   compute      WRF ec2-user CF       0:19      2 compute-dy-hpc6a-[1-2]
