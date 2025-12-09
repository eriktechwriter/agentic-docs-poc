---
slug: trend-vision-one-managing-amazon-ecs-policies
sidebar_position: 3
title: Managing Amazon ECS policies
---

Container Security policies for Amazon ECS clusters contain runtime rules that you can apply to entire clusters.

:::warning[Important]
Policy configuration for Kubernetes clusters differs greatly from a Amazon ECS environment. To properly configure Kubernetes protection policies, see [Managing Kubernetes protection policies](./kubernetes-protection-policies).
:::

### Procedure {#procedure}

1.  Go to **Cloud Security → Container Security → Configuration**.

2.  Click the **Policy** tab.

3.  Create, duplicate, or modify a policy.

    - To create a new policy, click **New**.

    - To duplicate an existing policy:

      1.  Click to select the base policy from the policy list.

      2.  Click **Duplicate**.

          Container Protection creates a copy of the existing policy and appends "Policy" to the policy name.

    - To modify an existing policy, click the policy in the policy list.

4.  For new and duplicated policies, specify a unique policy name.

    :::note
    - Policy names must not contain spaces and only support alphanumeric characters, underscores (\_), and periods (.).

    - You cannot modify the policy name after creating the policy.
    :::

5.  To provide more detail about the purpose for the policy, use the **Description** field.

    The description appears under the policy name in the policy list.

6.  To receive [CREM Risk Insights](../../../../cyber-risk-exposure-management/cyber-risk-overview), [Workbench alerts](../../../../agentic-siem-xdr/workbench), and use the [Search app](../../../../agentic-siem-xdr/xdr-data-explorer) to investigate security threats throughout your network environment, turn on **XDR Telemetry**.

    Trend Vision One can correlate and assess XDR telemetry data across all configured data sources to provide insights into your network's security and risk posture.

7.  Amazon ECS policies do not support **Deployment** or **Continuous** policies.

8.  Define the cluster-wide rules that apply while a pod is running by clicking the **Runtime** tab.

    The runtime policy consists of the [rulesets you create](../object-management/managed-rulesets) on the **Rulesets** tab.

    1.  Click **Add Ruleset**.

    2.  Select the checkbox of the ruleset you want to apply to the policy.

    3.  Click **Submit**.

9.  Amazon ECS policies do not support namespace (**NamespacedPolicyDefinition**) policies.

10. Click **Create** or **Save**.
