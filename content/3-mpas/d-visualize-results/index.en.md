---
title: Visualize results
weight: 44
--- 

In this section, we’re going to visualize the results of the job we just ran using `NCL`. Please ensure that you have completed the steps in [Preparation](content/0-preparation/index.en.md) and [1: Create an HPC Cluster](content/1-create-cluster/index.en.md) before proceeding.

1. Connect to the Head node via DCV, following instructions from the previous part **[Connect to the Cluster](/content/1-create-cluster/b-connect-cluster/)**.

2. The `supercell.ncl` script by default will produce a PDF file of the plots. We are going to change this to X11 with the following command.

    ```bash
    sed -i 's/pdf/x11/' supercell.ncl
    ```

3. Visualize the supercell following variables at various levels and forecast times.

* Perturbation potential temperature (perturbation theta)
* Upward component of wind (w)
* Rain water mixing ratio (qr)

    ```bash
    spack load ncl
    ncl supercell.ncl
    ```

    ![MPAS perturbation theta](/static/images/3-supercell-visualize.png)
