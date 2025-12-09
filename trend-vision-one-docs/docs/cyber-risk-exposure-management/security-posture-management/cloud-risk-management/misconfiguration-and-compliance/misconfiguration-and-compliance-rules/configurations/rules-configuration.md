---
slug: trend-vision-one-rules-configuration
sidebar_position: 2
title: Rules configuration
---

Cloud Risk Management offers rule configuration for your cloud providers allowing you to adjust their behaviour to meet your organisation's needs. For example, there are certain rules that should not be run, some may need their severity adjusted and hence need configuration. While other rules may be good to run as default and require no confugiration.

Once you configure a rule on an account, you can copy the same rule settings to other accounts for which you have administrative privileges or full access.

![](/images/configure-rule-q533dy=fdebb13e-940d-4fbc-97a8-f739607d6f64.webp)

### Configurations {#configurations}

- Disable rule
- Assign rule severity
- Time to live (TTL)
- Set up rule exceptions

### Disable rule {#disable-rule}

You can disable a rule if required by unchecking *Rule enabled*. On disabling a rule, all violations will be removed and no more checks will be performed until the rule is re-enabled.

### Assign rule severity {#assign-rule-severity}

Every rule has a default risk level associated with it, which can be modified by selecting one of the following options from the *Rule severity* drop-down:

- Extreme
- Very high
- High
- Medium
- Low

### Time to live {#time-to-live}

Time to live (TTL) configuration allows you to specify the length of time a [Check](../checks/model-check/model-check) will be displayed on the [All Checks Report](../../reports/all-checks-report). The configuration is only available for certain [Rules](../introduction-to-cloud-risk-management-rules/introduction-rules) that are specific to [Real Time Posture Monitoring](../../../monitoring-real-time-posture/real-time-posture-monitoring/real-time-threat-monitoring).

For example:

1.  A user signs in without MFA. The rule [AWS IAM user has signed in without MFA](https://www.cloudconformity.com/knowledge-base=96b226c5-530f-49eb-b89e-74625f50f5f0/aws/RTPM/iam-user-sign-in-without-mfa.md) run against the resources associated with your cloud account to create an event on RTPM and a check on the [All Checks Report](../../reports/all-checks-report)
2.  This Check will be seen on the All Checks Report for the period specified in the Time to live (TTL) configuration for the rule
3.  After the TTL expires, the Check will be removed. Next time the user signs into their account without MFA, a new Check will be created
4.  However, the entire event history will still show in the [Real Time Posture Monitoring](../../../monitoring-real-time-posture/real-time-posture-monitoring/real-time-threat-monitoring) dashboard

:::note
TTL is designed in such a way that prevents Cloud Risk Management's notifications service sending too many notifications for the same Check in a short period of time. After the first notification is sent for a Check, the following Checks that are identical to the one that has already been sent will be discarded during the TTL period. Once the period expires, the Check is eligible to be notified again. When exceptions are saved to an account’s Rule configuration, matching resources will be immediately excluded from checks.
:::

### Set up rule exceptions {#set-up-rule-exceptions}

Rule exceptions can be configured so that the rule bypasses the resources which match the exception input provided.

:::note
1.  When exceptions are saved to an account’s Rule configuration, matching resources will be immediately excluded from checks.
2.  Rules that require data from multiple resources do not support exceptions.
3.  Service level rules do not support exceptions.
:::

You can set up exceptions in the following two ways:

1.  *Tags* - Either the tag key, the tag value or a combination in the format `tag_key::tag_value` can be provided as input
2.  *Resource Id* - Unique resource identifier determined by the cloud provider. You could also use regex expressions to configure exceptions.

- *Note:* The format of a Resource Id varies depending on the resource type. To check a Resource ID, use the [List Checks API](https://automation.trendmicro.com/cloudone/conformity/).

  *Resource Id Examples*:

  - For most AWS resource types, the Resource Id is the ARN.

  - For AWS IAM or S3, the Resource Id matches the resource name.

  - For AWS EC2 and VPC, the Resource Id usually matches the randomly generated Id, e.g. `sg-001234d891234abcd`.

  - For most Azure resource types, the Resource Id is the full path, e.g. `/subscriptions/1234-1234-1234/resourceGroups/myResourceGroup/providers/microsoft.resource/resourceType/my-resource-name`.

:::note
*Please Note*: Cloud Risk Management will apply exceptions immediately once you save them. You do not need to run Compliance scan to exclude the desired resources.
:::

### Apply rule changes to multiple accounts {#apply-rule-changes-to-multiple-accounts}

You can change rule configurations and apply the same configurations to other or all accounts in the organization.

1.  Make changes in any or all of the rule configurations available - Disable rule, Assign rule severity, or Set up rule exceptions
2.  Click *Select other accounts* ![](/images/apply-rule-changes-step-2-wb2yfq=f1416bbe-d04a-41c9-aa03-a27993a4007d.webp)
3.  From the list, select the accounts to which rule changes should be applied and *Select accounts*

:::note
1.  For audit purposes, adding a note is mandatory for every change made to the rule configuration. The changes will take effect after the subsequent bot run.

2.  Disabled rules are greyed out and identified by a 'Disabled' text highlight

3.  Rules with exception configured (resource id or tag) are identified by a warning icon

4.  Rules that need configuration prior to running are identified by a red cross icon.
:::
