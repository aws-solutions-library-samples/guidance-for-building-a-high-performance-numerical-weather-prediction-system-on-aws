---
title: Connect to the cluster
weight: 22
--- 

#### Option 1: SSM Connect 

1. After cluster creation completes, with the created cluster selected, choose **Shell** to access the cluster head node.

    ![Connect cluster - shell](/static/images/1-connectcluster-shell.png)


#### Option 2: DCV

1. After cluster creation completes, with the created cluster selected, choose **DCV** to access the cluster head node.

    ![Connect cluster - DCV](/static/images/1-connectcluster-dcv.png)

2. A new tab will pop up.

* Your browser may prompt you about the pop-up. Please allow pop-ups from the AWS ParallelCluster UI domain. 

* DCV uses self-signed certificates, and your browser may warn you about a potentials security risk. You will need to click on **Advanced**, and then **Accept the Risk and Continue**. 

    ![Connect cluster - DCV pop-up](/static/images/1-connectcluster-dcvpopup.png)

3. To launch a terminal (where the rest of the workshop will run), click **Activities**, then **Terminal**. 

    ![Connect cluster - DCV terminal](/static/images/1-connectcluster-dcvterminal.png)
