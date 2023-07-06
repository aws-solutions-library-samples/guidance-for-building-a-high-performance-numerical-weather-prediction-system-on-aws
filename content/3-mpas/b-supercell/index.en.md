---
title: Test Case - Supercell
weight: 42
--- 

In this section, you will go through the steps to run a supercell test case on AWS ParallelCluster.

#### Download supercell test case

The supercell thunderstorm is an idealized test-case on the Cartesian plane. The test-case includes an MPAS mesh file, mesh decomposition files for certain MPI tasks counts, a namelist file for creating initial conditions and a namelist file for running the model.

1. Download the supercell test case by running the following command:

    ```bash
    cd /fsx
    curl -LO http://www2.mmm.ucar.edu/projects/mpas/test_cases/v7.0/supercell.tar.gz
    tar xf supercell.tar.gz
    ```

#### Create a decomposition graph

We need to create a decomposition graph for the number of MPI ranks that we will run MPAS on.

2. Install [METIS](http://glaros.dtc.umn.edu/gkhome/metis/metis/overview), a graph partitioning program. This will take around 5 mins.

    ```bash
    spack install metis%intel
    ```

3. Create a graph for the number of MPI ranks we will run MPAS on.

    ```bash
    cd supercell
    spack load metis%intel
    gpmetis -minconn -contig -niter=200 supercell.graph.info 32
    ```
    
