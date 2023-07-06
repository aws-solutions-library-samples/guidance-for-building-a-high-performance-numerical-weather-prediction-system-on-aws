---
title: "Create User"
weight: 13
---

ParallelCluster UI was deployed as a CloudFormation Stack prior to the event. To access it, you'll need to create a user.

### Create User

1. Open the [Amazon Cognito console](https://console.aws.amazon.com/cognito/v2/idp/user-pools).

2. Choose **parallelcluster-ui-Cognito-...**

3. Choose **Create user**:

![Create new user](/static/images/00-createuser.jpg)

4. Enter the following details for the new user:

* Invitation: **Send an email invitation**
* Email Address: **your email**
* Password: **generate password**

  Leave all else as default.

  ![Create new user](/static/images/00-newuser.jpg)

5. If this succeeded you should now have a email titled **[ParallelClusterUI] Welcome to ParallelCluster UI, please verify your account**. Copy the temporary password:

  ![AWS Parallel Cluster UI Password Email](/static/images/0-pclusterui-pw.png)

6. Next we'll need to grant our newly created user permissions. To do so we first need to click on the username (the long hash similar to *bd719805-047a-4cc7-a056-ccd0e012519a*):

  ![Create new user](/static/images/00-clickusername.jpg)

7. Scroll down in user details to **Group memberships**, and select **Add user to Group**.

  ![Create new user](/static/images/00-addusergroup.jpg)

8. Select **Admin**, then click **Add**.

Now that we've created the user, proceed to the next section for instructions on how to connect.
