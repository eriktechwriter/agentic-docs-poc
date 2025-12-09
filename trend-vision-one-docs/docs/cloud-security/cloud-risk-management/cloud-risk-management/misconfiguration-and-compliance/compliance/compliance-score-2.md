---
slug: trend-vision-one-compliance-score-2
sidebar_position: 3
title: Compliance score
---

Compliance score is a single quick metric for assessing your organisation's *all accounts*, *individual accounts*, or *groups* compliance with a selected filter of rules.

Compliance Score is calculated using a simple unweighted formula: (Total number of successful [Checks](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/model-check/model-check) / Total number of Checks) \* 100

Low compliance scores suggest a pressing need to take remediation actions to resolve failures.

*Does disabling rules / suppressing checks impact the Compliance Score?*

[Disabled rules](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/configurations/rules-configuration) or [Suppressed checks](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/rules-suppress-check) are not included in the calculation. Therefore, when you disable rules or suppress failed checks, you might see tiny improvements in the Compliance Score. The best way to improve your score is to improve your infrastructure so that it passes more tests. Our formula supports and encourages this behaviour.

*Does correcting an extreme risk failure have a larger positive impact than correcting a low risk failure?*

Compliance Score is calculated using an unweighted formula. It is not a measure of risk. Therefore, correcting failures of any severity level will have an equal impact.

### Improve Compliance Score {#improve-compliance-score}

Click on *Improve* to view the entire list of failed [checks](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/model-check/model-check). [Resolving failures](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/failed-check-resolution/failed-check-resolution) will improve your Compliance Score.

You also have the options to:

1.  [Generate report](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/reports/generate-download-report)
2.  On clicking the expand button
    1.  [Send rule to](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/send-rule)
    2.  [Configure rule](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/configurations/rules-configuration)
    3.  [Suppress](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/misconfiguration-and-compliance-rules/checks/rules-suppress-check)
    4.  Create tickets depending on [communication channels](../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/communication-and-notification/communication-channels/communication-integrations) configured
