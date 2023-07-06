---
title: Install MPAS
weight: 41
--- 

1. Let's install MPAS:

    ```bash
    spack install -j $(nproc) mpas-model%intel^intel-oneapi-mpi+external-libfabric^parallelio+pnetcdf
    ```

    :::alert{type=info}
    We are installing MPAS on the HeadNode. We’re able to do this as the architecture of the HeadNode instance type, **c6a.2xlarge**, matches the compute nodes so Spack does the correct [microarchitecture detection](https://spack.readthedocs.io/en/latest/basic_usage.html#support-for-specific-microarchitectures). In most other cases it makes sense to install on compute nodes.
    :::

    The command `spack install -j $(nproc) mpas%intel^intel-oneapi-mpi+external-libfabric^parallelio+pnetcdf` tells Spack to install MPAS using the latest version in the Spack recipe. It passes some build flags:

    | Spack Flag                             | Description |
    | -------------------------------------- | ----------- |
    | `-j $(nproc)`                          | Compile with all the cores on the HeadNode. |
    | `%intel`                               | Specify the Intel Compiler (ICC) we installed in a [previous step](/content/1-create-cluster/e-install-intel/index.en.md). |
    | `^intel-oneapi-mpi+external-libfabric` | Uses Intel MPI which we added in a [previous step](/content/1-create-cluster/e-install-intel/index.en.md). |
    | `^parallelio+pnetcdf`                  | Build and use [ParallelIO](https://ncar.github.io/ParallelIO/) with [PnetCDF](https://parallel-netcdf.github.io/) support. |

    This will take about 3 minutes to install. While that’s installing feel free to advance to the next step and retrieve the supercell test case model.
