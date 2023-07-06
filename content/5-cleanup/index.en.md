---
title: Cleanup
weight: 60
--- 

When we're done with the workshop, we can clean up resources. There are three different ways to do this. For most users, deleting the cluster is the right approach as the FSx Lustre filesystem can be expensive to keep running.

* [**Stop Cluster**](/content/5-cleanup/a-stop-cluster/index.en.md): When you stop the resources you'll still be charged for the filesystem, but not for the running EC2 Instances. This is a good way to preserve state in case you want to return to the workshop at a later date. If you used the 1,200 GB FSx Lustre filesystem specified in the template, this will cost **$348/month** while stopped.

* [**Delete Cluster**](/content/5-cleanup/b-delete-cluster/index.en.md) This will delete all resources in the cluster, including the head node, compute nodes, and filesystem; and stop costing money. For most users, do this step and resume later by saving data into S3, then restoring from that S3 bucket.

* [**Delete AWS ParallelCluster UI**](/content/5-cleanup/c-delete-pclusterui/index.en.md) Deleting the AWS ParallelCluster UI after deleting the cluster will completely remove everything created in the account. However, since it's built on a serverless architecure, [AWS ParallelCluster UI costs next to nothing](https://docs.aws.amazon.com/parallelcluster/latest/ug/install-pcui-v3.html#install-pcui-costs-v3) to keep running, so it's recommended to keep it for future work.
