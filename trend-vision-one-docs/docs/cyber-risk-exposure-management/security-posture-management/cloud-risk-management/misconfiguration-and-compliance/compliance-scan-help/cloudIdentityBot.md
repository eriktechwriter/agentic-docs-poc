---
slug: trend-vision-one-cloudIdentityBot
sidebar_position: 2
title: Compliance scan
---

With over 530 rules across six pillars of the Well-Architected Framework (Operational Excellence, Security, Reliability, Performance Efficiency, Cost Optimization and Sustainability), the Compliance scan [ingests meta-data from your AWS accounts](./compliance-scan-aws/aws-integration/aws-integration) and automates the task of ensuring your cloud infrastructure remains reliable, scalable, efficient, and secure. The comprehensive nature of the rules engine, along with our continuous delivery philosophy ensures any potential risks are identified immediately and prioritized according to the potential impact on your business.

### Run compliance scan {#run-compliance-scan}

Compliance scan automatically runs in [Compliance scan enabled regions](./configuring-compliance-scan/enabled-regions) according to the [Compliance scan frequency](./configuring-compliance-scan/frequency) set in your [Compliance scan settings](./configuring-compliance-scan/settings-cloud-posture).

To manually trigger a Compliance scan run, click [Run Compliance scan in the Summary Section of the Main Dashboard](../misconfiguration-and-compliance-dashboard/summary-widget-cloud-posture).

### Compliance settings {#compliance-settings}

[Compliance scan settings](./configuring-compliance-scan/settings-cloud-posture) allows you to configure settings for the Compliance scan including:

- how often the bot runs,
- what regions it is enabled in, and
- if you want to disable / enable Compliance scan to specific accounts.

### Data Ingestion {#data-ingestion}

See [AWS integration](./compliance-scan-aws/aws-integration/aws-integration) for how Compliance scan accesses your account's meta data from AWS.
