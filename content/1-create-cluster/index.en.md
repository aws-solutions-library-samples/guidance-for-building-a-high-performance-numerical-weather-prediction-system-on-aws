---
title: Create an HPC cluster
weight: 20
--- 

### AWS ParallelCluster 

AWS ParallelCluster is an AWS-supported, open source cluster management tool that makes it easy for you to deploy and manage High Performance Computing (HPC) clusters on AWS. ParallelCluster uses a simple (YAML) text file to model and provision all the resources needed for your HPC applications in an automated and secure manner. 

We’re going to use the AWS ParallelCluster UI, which we installed in the the previous section, to create a cluster.

We’ve broken the steps down to:

* Create a Cluster with AWS ParallelCluster
* Connect to the cluster
* Get to know the cluster
* Install Spack package manager
* Install Intel compilers and MPI
* Install NCL
