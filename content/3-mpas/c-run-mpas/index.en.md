---
title: Run MPAS
weight: 43
--- 

Now that we've installed MPAS and created a domain decomposition graph for the number of MPI ranks we will use, we can proceed to run the forecast.

1. Create a Slurm sbatch script to run the supercell test case, with initial conditions for the model:

    ```bash
    cd /fsx/supercell/
    cat > slurm-mpas-supercell.sh << EOF
    #!/bin/bash

    #SBATCH --job-name=MPAS
    #SBATCH --output=supercell-%j.out
    #SBATCH --nodes=2
    #SBATCH --ntasks-per-node=16
    #SBATCH --exclusive

    export I_MPI_OFI_LIBRARY_INTERNAL=0
    spack load intel-oneapi-mpi
    spack load mpas-model
    module load libfabric-aws
    set -x
    ulimit -s unlimited
    ulimit -a

    export FI_PROVIDER=efa
    export I_MPI_DEBUG=4
    export I_MPI_FABRICS=shm:ofi
    export I_MPI_OFI_PROVIDER=efa
    export I_MPI_PIN_DOMAIN=omp
    export KMP_AFFINITY=compact
    export OMP_NUM_THREADS=6

    # create initial conditions
    time mpiexec.hydra -np \$SLURM_NTASKS --ppn \$SLURM_NTASKS_PER_NODE init_atmosphere_model

    # run the model
    time mpiexec.hydra -np \$SLURM_NTASKS --ppn \$SLURM_NTASKS_PER_NODE atmosphere_model
    EOF
    ```

2. Submit the job:

    ```bash
    sbatch slurm-mpas-supercell.sh
    ```

3. You can monitor the job's status with `squeue`:

    ```bash
    squeue
    ```

Using 192 cores, the job took 4min 17s to complete.
