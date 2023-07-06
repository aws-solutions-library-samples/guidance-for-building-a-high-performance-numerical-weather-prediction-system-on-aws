---
title: Install Intel compilers and MPI
weight: 25
--- 

#### Intel Compilers

1. Next we’ll use Spack to install the [Intel Compilers (ICC)](https://www.intel.com/content/www/us/en/developer/tools/oneapi/toolkits.html):

    ```bash
    spack install --no-cache intel-oneapi-compilers@2022.0.2
    ```

    We will later use ICC to compile binaries such as WRF in the next few sections. This will take about 4 mins to complete. Once it is complete, we can see the installed package by running:

    ```bash 
    spack find
    ```

    **Output**:

    ![spack find](/static/images/1-installintel-spackfind.png)





2. To use a package, we load it in with `spack load`. In order for Spack to be able to use the compiler to build further packages, we need to inform Spack about them, this is done with `spack compiler find`. Finally, when we do not need a package we `spack unload` it.

    ```bash
    spack load intel-oneapi-compilers
    spack compiler find
    spack unload
    ```

    This will display the Intel compiler under:

    ```bash
    spack compilers
    ```

    **Output**:

    ![spack compilers](/static/images/1-installintel-spackcompilers.png)

#### Libfabric

3. We are also going to install [libfabric](https://ofiwg.github.io/libfabric/) with [EFA](https://aws.amazon.com/hpc/efa/) support.

    ```bash
    spack install libfabric@1.16.1 fabrics=efa,tcp,udp,sockets,verbs,shm,mrail,rxd,rxm %intel
    ```

#### IntelMPI

4. We will now install the [Intel MPI library](https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html) underneath the Intel compilers. We are also going to use the AWS EFA libfabric by setting `external-libfabric` in our Spack install. We installed this in the previous step. 

    ```bash
    spack install --no-cache intel-oneapi-mpi+external-libfabric%intel
    ```

    :::alert{type=info}
    You can safely ignore the warning about `patchelf: patchelf: cannot find section '.dynamic'. The input file is most likely statically linked`
    :::

    This will take less than a minute to complete.
