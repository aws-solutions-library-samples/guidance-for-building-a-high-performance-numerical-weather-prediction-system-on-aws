---
title: "Login to AWS ParallelCluster UI"
weight: 17
---

1. After the deployment completes, open the admin email that was sent to the address you entered. It contains a temporary password that you use to access the AWS ParallelCluster UI.

    ![AWS Parallel Cluster UI Password Email](/static/images/0-pclusterui-pw.png)

2. In the AWS [CloudFormation](https://us-east-2.console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/outputs?filteringText=&filteringStatus=active&viewNested=true&stackId=arn%3Aaws%3Acloudformation%3Aus-east-2%3A905784713722%3Astack%2Fparallelcluster-ui%2F7b3c8e20-d566-11ed-928b-0a74b6c1dd44) console list of stacks, choose the link to `STACK_NAME`.<br><br>

3. In **Stack details**, choose **Outputs** and select the link for the key named **`STACK_NAME`URL** to open the AWS ParallelCluster UI.<br><br>
    
    ![AWS Parallel Cluster UI URL](/static/images/0-pclusterui-url.png)

4. Enter the temporary password. Follow the steps to create your own password and log in.<br><br>

    ![AWS Parallel Cluster UI Login](/static/images/0-pclusterui-login.png)

**You are now on the home page of the AWS ParallelCluster UI in the AWS Region that you selected.**
