---
title: Visualize results
weight: 34
--- 
 
In this section, we’re going to visualize the results of the job we just ran using `NCL`. Please ensure that you have completed the steps in [Preparation](content/0-preparation/index.en.md) and [1: Create an HPC Cluster](content/1-create-cluster/index.en.md) before proceeding.

**Please use the DCV option (instead of Shell) to access your head node for this section.**

1. Navigate to the WRF run directory:

    ```bash
    cd /fsx/conus_12km
    ```

2. The provided `ncl_scripts/surface.ncl` script will generate two plots of surface fields at valid time 2019-11-27 00:00. Use the space bar to advance to the next plot.

    ```bash
    spack load ncl
    spack load intel-oneapi-compilers
    ncl ncl_scripts/surface.ncl
    ```

    **Output**:

    ![surface](/static/images/2-wrf-surface.png)

3. Generate a vertical profile of relative humidity (%) and temperature (K):

    ```bash
    ncl ncl_scripts/vert_crossSection.ncl
    ```

    **Output**:

    ![vertical profile](/static/images/2-wrf-vertprofile.png)
