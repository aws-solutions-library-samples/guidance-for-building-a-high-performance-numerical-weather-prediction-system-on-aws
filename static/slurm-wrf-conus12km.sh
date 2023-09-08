cd /fsx/conus_12km/
cat > slurm-wrf-conus12km.sh << EOF
#!/bin/bash

#SBATCH --job-name=WRF
#SBATCH --output=conus-%j.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=48
#SBATCH --exclusive

module purge
module load libfabric-aws
spack load wrf
wrf_exe=$(spack location -i wrf)/run/wrf.exe
set -x
ulimit -s unlimited
ulimit -a

export OMP_NUM_THREADS=2
export FI_PROVIDER=efa
export KMP_AFFINITY=compact

time mpirun $wrf_exe
EOF

