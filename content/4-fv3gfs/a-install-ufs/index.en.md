---
title: Install UFS
weight: 51
--- 

1. Let's install UFS:

    ```bash
    spack install -j $(nproc) ufs-weather-model%intel^intel-oneapi-mpi+external-libfabric
    ```

    :::alert{type=info}
    We are installing UFS on the HeadNode. We’re able to do this as the architecture of the HeadNode instance type, **c6a.2xlarge**, matches the compute nodes so Spack does the correct [microarchitecture detection](https://spack.readthedocs.io/en/latest/basic_usage.html#support-for-specific-microarchitectures). In most other cases it makes sense to install on compute nodes.
    :::

    The command `spack install -j $(nproc) ufs-weather-model%intel^intel-oneapi-mpi+external-libfabric` tells Spack to install [UFS](https://spack.readthedocs.io/en/latest/package_list.html#ufs-weather-model) using the latest version in the [Spack recipe](https://github.com/spack/spack/blob/develop/var/spack/repos/builtin/packages/ufs-weather-model/package.py). It passes some build flags:

    | Spack Flag   | Description |
    | ------------ | ----------- |
    | `-j $(nproc)`     | Compile with all cores on the instance.   |
    | `%intel`          | Specify the Intel Compiler (ICC) we installed in a [previous step](/content/1-create-cluster/e-install-intel/index.en.md). |    
    | `^intel-oneapi-mpi+external-libfabric` | Uses Intel MPI which we added in a [previous step](/content/1-create-cluster/e-install-intel/index.en.md). |

    This will take about 1 min to install. While that’s installing feel free to advance to the next step and retrieve the simple test case model.
    