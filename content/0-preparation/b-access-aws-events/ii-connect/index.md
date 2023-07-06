---
title: "Connect"
weight: 14
---

## Connect

1. Navigate to the [AWS CloudFormation Console](https://us-east-2.console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks), and select the stack `parallelcluster-ui`.

2. Under **Outputs**, click the value beside the key `ParallelClusterUIUrl`.

  ![ParallelCluster UI URL](/static/images/00-connect-cfn.jpg)

3. **Enter the credentials**  using the *email* you used when creating the user and the *temporary password* from the email from before.

  ![ParallelCluster UI CloudFormation Stack](/static/images/0-pclusterui-login.png)

4. You will be asked to provide a new password. Enter a new password to complete signup.

  ![Signup Screen](/static/images/00-connect-newpw.png)

Congrats! You'll now be greeted by the AWS ParallelCluster UI. In the next section, we'll create a cluster starting from the UI:

  ![PC UI First Page](/static/images/00-pclusterui-firstpage.jpg)

**You can now continue to the [Create an HPC cluster](https://catalog.workshops.aws/nwp-on-aws/en-US/1-create-cluster) segment of the workshop.**