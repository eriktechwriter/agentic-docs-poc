---
slug: trend-vision-one-configure-web-reputation
sidebar_position: 1
title: Configure Web Reputation
---

:::note
For a list of operating systems where Web Reputation is supported, see [Supported features by platform](../../administration/manage-agents-protected-computers/configure-agent-version-control/agent-platform-compatibility/supported-features-linux-platform).
:::

The Web Reputation module protects against web threats by blocking access to malicious URLs. Server & Workload Protection uses Trend Micro's Web security databases from [Smart Protection Network](https://www.trendmicro.com/en_us/business/technologies/smart-protection-network) sources to check the reputation of websites that users are attempting to access. The website's reputation is correlated with the specific Web Reputation policy enforced on the computer. Depending on the [security level](./enforce-security-level-) being enforced, Server & Workload Protection will either block or allow access to the URL.

Web Reputation supports blocking HTTPS traffic when **Advanced TLS traffic inspection** is enabled. For more information, see [Inspect TLS traffic](../configure-intrusion-prevention/inspect-tls-traffic).

To enable and configure Web Reputation, perform the basic steps below:

### Procedure {#procedure}

1.  [Turn on the Web Reputation module.](./turn-web-reputation-module)

2.  Enable the [Trend Micro Toolbar](./web-reputation-trend-micro-toolbar).

3.  Switch between [Inline and Tap mode](./switch-inline-tap-mode-).

4.  [Configure the security level](./enforce-security-level-).

5.  [Create exceptions](./create-exceptions-).

6.  [Configure the Smart Protection Server](./configure-smart-protection-server-).

7.  Configure [advanced settings](./edit-advanced-settings-).

8.  [Test Web Reputation](./test-web-reputation-).

### Next steps {#next-steps}

To suppress messages that appear to users of agent computers, see [Configure notifications on the computer](../configure-anti-malware/anti-malware-set-up/configure-malware-scans/configure-notifications-computer).

**Related information**

- [Turn on the Web Reputation module](./turn-web-reputation-module)
- [Trend Micro Toolbar](./web-reputation-trend-micro-toolbar)
- [Inline and Tap mode](./switch-inline-tap-mode-)
- [Configure the security level](./enforce-security-level-)
- [Create exceptions](./create-exceptions-)
- [Configure the Smart Protection Server](./configure-smart-protection-server-)
- [Web Reputation advanced settings](./edit-advanced-settings-)
- [Test Web Reputation](./test-web-reputation-)
