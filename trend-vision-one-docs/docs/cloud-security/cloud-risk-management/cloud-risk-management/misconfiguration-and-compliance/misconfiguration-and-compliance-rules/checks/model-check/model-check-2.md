---
slug: trend-vision-one-model-check-2
sidebar_position: 1
title: Model check
---

## What are Checks? {#what-are-checks}

When a [rule](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/introduction-to-cloud-risk-management-rules/introduction-rules) is run against the infrastructure (resources) associated with your AWS account, the result of the scan is referred to as a *Check*. For example, an EC2 Security Group may have 80 Trend Vision One™ – Cloud Risk Management Rules (Checks) scanning for various risks/vulnerabilities.

## Viewing Checks {#viewing-checks}

To view Checks associated with an account, click [Browse all checks](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/reports/all-checks-report) on the summary section of the Cloud Risk Management Dashboard.

Each Check has the following information associated with it:

### Procedure {#procedure}

1.  Status

    - *Failure* - rule has failed for a specific resource
    - *Success* - rule has passed for a specific resource
    - *Suppressed* - rule has been [suppressed](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/rules-suppress-check) and its status will not be included in your compliance score

2.  Failure introduced date

3.  A message describing the issue

4.  Account

5.  Region

6.  A link to the resource

## Check Actions {#check-actions}

You can take the following actions on a Check:

### Procedure {#procedure-1}

1.  [Resolve the failures](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/failed-check-resolution/failed-check-resolution)

2.  On clicking the expand button against a rule or a resource:

    - [Send rule to](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/send-rule)
    - [Configure rule](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/configurations/rules-configuration)
    - [Suppress](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/rules-suppress-check)
    - Create tickets depending on the [communication channels](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/communication-and-notification/communication-channels/communication-integrations) configured

## Failure and Success Definition {#failure-and-success-definition}

Every Rule has an implementation associated with it, which will then determine if a Check against the Rule is successful or not. For example, if you have an S3 bucket with public read permissions enabled, the “S3 Bucket Public 'READ' Access”’ Rule will be applied towards all S3 buckets in your AWS account. If any S3 bucket has Public Read enabled, then the Check for that S3 bucket is a *failure*.

## Not Scored Checks {#not-scored-checks}

Some rules are documented by Cloud Risk Management but cannot be tested against your cloud infrastructure due to not being applicable to cloud infrastructure or limitations of the data provided by the cloud provider. Rules that are only informational are identified as *Not Scored*.

Cloud Risk Management may not be able to test the Rule completely, we do provide you with some high-level information that can be beneficial, e.g. Check whether 'Alternate contacts for your AWS Accounts' have been set up. You can pass on the information to your team via a [communication channel](../../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/communication-and-notification/communication-channels/communication-integrations)and keep them informed as well.

You can neither *‘Resolve’* or *‘Suppress’* these Rules as they do not affect your compliance score.

To view a list of all Not Scored Rules in your account:

### Procedure {#procedure-2}

1.  Browse *All Checks* report.

2.  Enter “not scored” in the *Filter by resource id, rule title or message.*

3.  *Click Generate Report.*

### Next steps {#next-steps}
