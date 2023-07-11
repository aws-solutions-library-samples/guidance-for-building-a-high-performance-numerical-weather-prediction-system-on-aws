#!/bin/bash

#SBATCH --job-name=WRF
#SBATCH --output=conus-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=48
#SBATCH --exclusive

export I_MPI_OFI_LIBRARY_INTERNAL=0
spack load intel-oneapi-mpi intel-oneapi-compilers
spack load wrf
module load libfabric-aws
wrf_exe=$(spack location -i wrf)/run/wrf.exe
set -x
ulimit -s unlimited
ulimit -a

export OMP_NUM_THREADS=2
export FI_PROVIDER=efa
export I_MPI_FABRICS=shm:ofi
export I_MPI_OFI_PROVIDER=efa
export I_MPI_PIN_DOMAIN=omp
export KMP_AFFINITY=compact
export I_MPI_DEBUG=4

time mpiexec.hydra -np \$SLURM_NTASKS --ppn \$SLURM_NTASKS_PER_NODE \$wrf_exe
sleep 10
echo 'SLURM WRF Conus - 12 km model loaded, submitting a Job...'
sbatch slurm-wrf-conus12km.sh
sleep 10
echo '...WRF Job submitted, checking status'
squeue
# Sample output:
# JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
# 5   compute      WRF ec2-user CF       0:19      2 compute-dy-hpc6a-[1-2]
