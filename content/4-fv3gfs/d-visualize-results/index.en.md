---
title: Visualize results
weight: 54
--- 

In this section, we’re going to visualize the results of the job we just ran using `NCL`. Please ensure that you have completed the steps in [Preparation](content/0-preparation/index.en.md) and [1: Create an HPC Cluster](content/1-create-cluster/index.en.md) before proceeding.

1. Connect to the Head node via DCV, following instructions from the previous part **[Connect to the Cluster](/content/1-create-cluster/b-connect-cluster/)**.

2. Download an NCL script for plotting the results of the forecast.

    ```bash
    curl -OL https://raw.githubusercontent.com/wiki/ufs-community/ufs-mrweather-app/files/plot_ufs_sfcf.ncl
    ```

3. Change the output format of the plots from PNG to X11 and the input file from `sfcf` to `phyf` with the following `sed` command.

    ```bash
    sed -i 's/png/x11/; s/sfcf/phyf/' plot_ufs_sfcf.ncl
    ```

4. Create the plots of the forecast at 24 hours.

    ```bash
    spack load ncl
    ncl plot_ufs_sfcf.ncl 's="024"'
    ```

![2 metre temperate](/static/images/4-ufs-visualize2mtemperate.png)
![Total precipitation](/static/images/4-ufs-visualisetotalprecip.png)
