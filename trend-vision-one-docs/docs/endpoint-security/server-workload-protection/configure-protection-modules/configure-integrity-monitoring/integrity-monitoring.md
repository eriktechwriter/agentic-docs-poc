---
slug: trend-vision-one-integrity-monitoring
sidebar_position: 2
title: About Integrity Monitoring
---

:::note
For a list of operating systems where Integrity Monitoring is supported, see [Supported features by platform](../../administration/manage-agents-protected-computers/configure-agent-version-control/agent-platform-compatibility/supported-features-linux-platform).
:::

The integrity monitoring module scans for unexpected changes to registry values, registry keys, services, processes, installed software, ports and files on agents. Using a baseline secure state as a reference, the integrity monitoring module performs scans on the above and logs an event (and an optional alert) if it detects any unexpected changes.

To enable and configure integrity monitoring, see [Set up integrity monitoring](./set-up-integrity-monitoring/set-up-integrity-monitoring).

For more information on creating integrity monitoring rules, see [Create an integrity monitoring rule](./create-an-integrity-monitoring-rule/create-integrity-monitoring-rule). You can create a rule from a file or registry monitoring template, or by using the Server & Workload Protection XML-based [Integrity monitoring rules language](./integrity-monitoring-rules-language/integrity-monitoring-language-swp).
