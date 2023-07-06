---
title: "Deploy AWS ParallelCluster UI"
weight: 16
---

## AWS ParallelCluster UI

The [AWS ParallelCluster UI](https://docs.aws.amazon.com/parallelcluster/latest/ug/pcui-using-v3.html) is a web-based user interface that mirrors the AWS ParallelCluster pcluster CLI, while providing a console-like experience. You install and access the AWS ParallelCluster UI in your AWS account. 

You will be using an AWS CloudFormation quick-create link to deploy an AWS ParallelCluster UI stack with nested Amazon Cognito, API Gateway, and Amazon EC2 Systems Manager stacks.

### Deploy the AWS ParallelCluster UI

1. To install an instance of the AWS ParallelCluster UI, you choose an AWS CloudFormation quick-create link for the AWS Region that you create clusters in. For **us-east-2**, click on [this link](https://us-east-2.console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/create/review?stackName=parallelcluster-ui&templateURL=https://parallelcluster-ui-release-artifacts-us-east-1.s3.us-east-1.amazonaws.com/parallelcluster-ui.yaml) to be taken to a Create Stack Wizard where you provide quick-create stack template inputs and deploy the stack. 
  
    *For other regions, access AWS ParallelCluster UI quick-create links at [this page](https://docs.aws.amazon.com/parallelcluster/latest/ug/install-pcui-v3.html).*  
  

2. On the Create Stack Wizard page:

* Enter a valid email address for Admin's Email.  

    :::alert{type=info}
    A temporary password to access the AWS ParallelCluster UI will be sent to this email address. If you delete the email before you save or use the temporary password, you must delete the stack and reinstall the AWS ParallelCluster UI.
    :::

    ![AWS Parallel Cluster UI URL](/static/images/0-pclusterui-deployemail.png)

* Keep the rest of the form blank or enter values for optional parameters to customize the AWS ParallelCluster UI build.  
  

* Note the stack name for use in later steps (`STACK_NAME`).

5. At the bottom of the page, under **Capabilities**, agree to the CloudFormation capabilities.<br><br> 

    ![AWS Parallel Cluster UI URL](/static/images/0-pclusterui-deploycap.png)

6. Click **Create stack**. It takes about 15 minutes to complete the AWS ParallelCluster API and AWS ParallelCluster UI deployment.
