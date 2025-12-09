---
slug: trend-vision-one-connecting-aws-accounts
sidebar_position: 1
title: Connect and update AWS accounts
---

Add your AWS accounts and organizations or update imported legacy connections.

:::warning[Important]
Some connection methods have limited support for Trend Vision One features. Review each connection method see which best suits your cloud environment and security needs.
:::

Cloud Accounts supports connecting AWS accounts individually or as part of an AWS Organization.

If you updated a Trend Cloud One Workload Security product to Server & Workload Protection, the connected AWS accounts are automatically added to Cloud Accounts. Update your AWS connections to enable the additional cloud security features Trend Vision One provides.

Before you begin, ensure you have access to a sign-in or user role with administrator privileges for the cloud account you wish to connect. Sign into the account on a separate tab in the same browser instance as the Trend Vision One console.

- To connect AWS accounts individually, refer to the following topics to find the method that best suits your environment:

  - To use a stack template to automate the connection process, see [Connect an AWS account using CloudFormation](./adding-aws-account).

  - To use a terraform script with AWS CloudShell, see [Connect an AWS account using Terraform](./adding-aws-account-using-terraform).

  - To connect from AWS, see [Use QuickLaunch to add an AWS account](./using-quicklaunch-add-aws-account).

  - To use alternative methods or connect manually, see [Connecting AWS Accounts Using APIs](./connecting-aws-accounts-using-apis).

- To connect an AWS Control Tower account for log monitoring, refer to the following topics:

  - To configure your CloudTrail settings, see [Configure CloudTrail settings](./cloudtrail-configuration).

  - To connect an AWS Log Archive account with Control Tower, see [Connect an AWS account with CloudTrail and Control Tower](./add-cloudtrail-control-tower).

  - To connect an AWS Control Tower Audit account, see [Connect an AWS Control Tower audit account with CloudTrail](./add-aws-control-tower-audit-account).

- To add accounts managed by an AWS organization, see [Connect an AWS Organization](./adding-aws-organizations).

  :::warning[Important]
  Adding an AWS organization forces accounts managed by that organization to apply the same settings configured for the entire organization. Settings cannot be modified for individual accounts added as part of an organization.

  To apply different configurations to individual accounts managed by an AWS organization, you must add those accounts separately. Either add the accounts before adding your AWS organization, or use the **OrganizationExcludedAccounts** parameter to exclude those accounts from the stack deployment.
  :::

- To update a legacy connection added by **Cloud Security Posture** and Server & Workload Protection, see [Update a legacy AWS connection](./updating-legacy-aws-connection).

**Related information**

- [Connect an AWS account using CloudFormation](./adding-aws-account "Add and connect an AWS account to Trend Vision One using a generated stack template to provide security for your cloud assets.")
- [Connect an AWS account using Terraform](./adding-aws-account-using-terraform "Connect your AWS account using a terraform script to deploy monitoring assets to your account.")
- [Configure CloudTrail settings](./cloudtrail-configuration "Configure your CloudTrail settings to provide greater visibility for XDR monitoring.")
- [Connect an AWS account with CloudTrail and Control Tower](./add-cloudtrail-control-tower "Connect your AWS Log Archive account with AWS CloudTrail and Control Tower configured to allow Trend Vision One to provide security for your multi-account AWS environment.")
- [Connect an AWS Control Tower audit account with CloudTrail](./add-aws-control-tower-audit-account "Add and connect an AWS audit account with AWS CloudTrail and Control Tower configured to allow Trend Vision One to provide security for your multi-account AWS environment.")
- [Connect an AWS Organization](./adding-aws-organizations "Quickly add your accounts to Cloud Accounts by connecting your AWS Organization.")
- [Update a legacy AWS connection](./updating-legacy-aws-connection "Update your AWS accounts imported from Cloud Security Posture and Server & Workload Protection.")
- [Use QuickLaunch to add an AWS account](./using-quicklaunch-add-aws-account "Use QuickLaunch to connect your AWS account to the Cloud Accounts app.")
- [Connecting AWS Accounts Using APIs](./connecting-aws-accounts-using-apis "Use the Trend Vision One APIs to connect AWS accounts, whether your company requires manual deployment of resources, or to customize aspects of the deployment process.")
