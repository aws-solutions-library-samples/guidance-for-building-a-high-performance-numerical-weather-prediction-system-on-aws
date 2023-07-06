---
title: Install WRF
weight: 31
--- 

1. Now that we’ve built a cluster, let’s install WRF by running the following command:

    ```bash
    spack install -j $(nproc) wrf@4.3.3%intel build_type=dm+sm ^intel-oneapi-mpi+external-libfabric
    ```

    :::alert{type=info}
    We are installing WRF on the HeadNode. We’re able to do this as the architecture of the HeadNode instance type, **c6a.2xlarge**, matches the compute nodes so Spack does the correct [microarchitecture detection](https://spack.readthedocs.io/en/latest/basic_usage.html#support-for-specific-microarchitectures). In most other cases it makes sense to install on compute nodes.
    :::

    | Spack Flag                             | Description |
    | -------------------------------------- | ----------- |
    | `-j $(nproc)`                          | Compile with all the cores on the HeadNode. |
    | `@4.3.3`                               | Specify [version 4.3.3](https://github.com/wrf-model/WRF/releases/tag/v4.3.3) of WRF. |
    | `%intel`                               | Specify the Intel Compiler (ICC) we installed in a [previous step](/content/1-create-cluster/e-install-intel/index.en.md). |
    | `build_type=dm+sm`                     | Enable [hybrid parallelism](https://in.nau.edu/hpc/overview/using-the-cluster-advanced/parallelism/) MPI + OpenMP. |
    | `^intel-oneapi-mpi+external-libfabric` | Uses Intel MPI which we added in a [previous step](/content/1-create-cluster/e-install-intel/index.en.md). |

    This will take about 3 minutes to install. While that’s installing feel free to advance to the next step and retrieve the CONUS 12-km model.
    