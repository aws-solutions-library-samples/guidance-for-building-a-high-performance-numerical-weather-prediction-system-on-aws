---
title: Create a cluster with AWS ParallelCluster UI
weight: 21
--- 

In this section we’re going to use AWS ParallelClusterUI to create a cluster from a sample template we’ve provided.

You’ll use the [hpc6a](https://aws.amazon.com/ec2/instance-types/hpc6/) instance, which is AMD EPYC Milan based. The hpc6a instance is designed specifically for tightly coupled HPC style workloads.

The instances have the following specifications:

| Instance Size  | Cores | Memory (GiB) | EFA Network Bandwidth (Gbps) | Network Bandwidth (Gbps)* | On-Demand Price |
| -------------- | ----- | ------------ | ---------------------------- | ------------------------- | --------------- |
| hpc6a.48xlarge | 96    | 384          | 100                          | 25                        | $2.88           |
| c6a.48xlarge   | 96    | 384          | 50                           | 50                        | $7.344          |

1. Download the cluster configuration file below:

    :button[Download Template]{href="/static/cluster-config-hpc6a.yaml" action=download}

2. In the home page of the AWS ParallelCluster UI, in **Clusters**, select `us-east-2` as your Region on the top-right side of the page, then choose **Create cluster**.

    ![Create cluster - Region](/static/images/1-createcluster-region.png)

3. In **Cluster name**:

* Enter a name for your cluster (`CLUSTER_NAME`). 

* Select **Existing template**, and choose **Next**.

    ![Create cluster - name](/static/images/1-createcluster-name.png)

* You will be prompted to provide a file. Select the cluster configuration file that you downloaded in step 1 above, which is titled either `cluster-config-c6a.yaml` or `cluster-config-hpc6a.yaml`.

4. In **Cluster**, select a VPC from your account (there should only be one available in the dropdown), and choose **Next**. 

    ![Create cluster - VPC](/static/images/1-createcluster-vpc.png)

5. In **Head node**:

* Select a subnet from the Availability Zone ID **use2-az2**.
   
    ![Create cluster - subnet](/static/images/1-createcluster-subnet.png)

* (Optional) Select a keypair from your account. 

* Choose **Next**.

6. In **Storage**, leave the pre-populated settings as is, and choose **Next**.

7. In **Queues**, under the **compute** queue, select the same subnet as in the previous step, then choose **Next**.

    ![Create cluster - queue subnet](/static/images/1-createcluster-queuesubnet.png)

8. In **Create**:

* Choose **Dry run** to validate your cluster configuration. 

* Choose **Create** to create your cluster, based on the validated configuration. 

9. After a few seconds, the AWS ParallelCluster UI automatically navigates you back to the **Clusters** page, where you can monitor the cluster create status and Stack events. If you do not see your cluster being created, ensure that you have the `us-east-2` selected at the top right side of the page. 

* Choose **Instances** to see the list of EC2 instances and status.

* Choose **Details** to see cluster details, such as the version, status, and a link to the CloudFormation stack that creates the cluster.

* In **Details**, after cluster creation completes, choose View to view or download the cluster configuration YAML file.
