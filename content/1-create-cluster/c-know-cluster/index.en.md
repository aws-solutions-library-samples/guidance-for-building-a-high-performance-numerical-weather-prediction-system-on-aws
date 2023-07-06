---
title: Get to know the cluster
weight: 23
--- 

Now that you are connected to the head node, you can familiarize yourself with the cluster structure by running the following set of commands.

:::alert{type=info}
[SLURM](https://slurm.schedmd.com/) from SchedMD is one of the resource manager that you can use in AWS ParallelCluster. For an overview of the SLURM commands, see the [SLURM Quick Start User Guide](https://slurm.schedmd.com/quickstart.html). If you are familar with PBS, here is the [PBS-Slurm Conversion Cheat Sheet](https://www.nrel.gov/hpc/assets/pdfs/pbs-to-slurm-translation-sheet.pdf)
:::

Your bash user should be similar to `ec2-user@ip-<IP-address>`. If it is otherwise something like `sh-4.2` or `ssm-user@<IP-address>`, then run the following command before proceeding:

```bash
sudo su ec2-user
```

![ec2-user](/static/images/1-gettoknow-ec2user.png)

1. **List existing partitions and nodes per partition.** 

    ```bash
    sinfo
    ```

    Running `sinfo` shows both the instances we currently have running and those that are not running (think of this as a queue limit). Initially we’ll see all the node in state `idle~`, which means that no instances are running. When we submit a job we’ll see some instances go into state `alloc` meaning that they’re currently completely allocated, or `mix` meaning that some but not all cores are allocated. After the job completes the instance stays around for a few minutes (the [default cooldown](https://docs.aws.amazon.com/parallelcluster/latest/ug/Scheduling-v3.html#yaml-Scheduling-SlurmSettings-ScaledownIdletime) is 10 mins) in state `idle%`. This can be confusing, so we’ve tried to simplify it in the following table:

    | State   | Description                                                 |
    | -----   | ----------------------------------------------------------- |
    | `idle~` | Instance is not running but can launch when a job is submitted. |
    | `idle%` | Instance is running and will shut down after Scaledownidletime (default 10 mins). |
    | `mix`   | Instance is partially allocated.                            |
    | `alloc` | Instance is completely allocated.                           |

    **Output**:

    ![sinfo](/static/images/1-gettoknow-sinfo.png)


2. **List jobs in the queues or running.** Obviously, there won’t be any since we have not submitted anything… yet!

    ```bash
    squeue
    ```

    **Output**:

    ![squeue](/static/images/1-gettoknow-squeue.png)

#### Module Environment

[Environment Modules](http://modules.sourceforge.net/) or [Lmod](https://lmod.readthedocs.io/en/latest/) are fairly standard tools in HPC that are used to dynamically change your environment variables (`PATH`, `LD_LIBRARY_PATH`, etc.).

3. **List available modules** You’ll notice that every cluster comes with *intelmpi* and *openmpi* pre-installed. These MPI versions are compiled with support for the high-speed interconnect EFA.

    ```bash
    module avail
    ```

    **Output**:

    ![module avail](/static/images/1-gettoknow-moduleavail.png)

4. **Load a particular module.** In this case, this command loads Intel MPI in your environment and checks the path of *mpirun*.

    ```bash
    module load intelmpi
    which mpirun 
    ```

    **Output**:

    ![module load intelmpi](/static/images/1-gettoknow-whichmpirun.png)

#### Filesystems

5. **List mounted volumes.** A few volumes are shared by the head-node via NFS and will be mounted on compute instances when they boot up. Both /fsx and /home are accessible by all nodes.

* **Check the amount of available disk space for all file systems**. When we created the cluster, we also created a Lustre filesystem with FSx Lustre. We can see where it was mounted and the storage size by running:

    ```bash
    df -hT
    ```
  
    **Output**:
    ![dfht](/static/images/1-gettoknow-dfht.png)

* Print the list of exported NFS-based filesystems on the head node.

    ```bash
    showmount -e localhost
    ```

    **Output**:

    ![Showmount](/static/images/1-gettoknow-showmount.png)

In the next section, we’ll install Spack on this shared filesystem!
