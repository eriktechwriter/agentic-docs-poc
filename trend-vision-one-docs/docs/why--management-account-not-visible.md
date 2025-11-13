---
slug: trend-vision-one-why--management-account-not-visible
title: Why is my management account not visible after connecting my AWS organization?
---

This is a limitation of AWS when deploying a CloudFormation stack to your organization. According to the help topic [DeploymentTargets - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.md):

"StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization."

You can still add your management account separately by following the steps in [Connect an AWS account using CloudFormation](adding-aws-account.md).
