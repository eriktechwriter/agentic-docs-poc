---
slug: trend-vision-one-uninstall-deep-security-agent-macos
sidebar_position: 4
title: Manually uninstall the Deep Security agent from macOS
---

Uninstall connected Deep Security agents from macOS.

:::note
When uninstalling a Deep Security agent, the agent does not notify your Protection Managers when uninstalling. The affected endpoint appears on the **Computers** page with a status of "Managed (Offline)" or similar. To resolve the issue:

- Deactivate the agent before you uninstall Server & Workload Protection, or

- Delete the computer from the list after you uninstall Server & Workload Protection.
:::

The Trend Vision One Endpoint Security agent does not support deployment to macOS with Server & Workload Protection features at this time. If you do need to uninstall the Trend Vision One Endpoint Security agent from a macOS endpoint, see [Uninstall macOS Agents with the Tool](../uninstall-macos-agents-tool).

However, depending on your environment, you might have Deep Security agents connected to your Protection Managers deployed to a macOS endpoint.

### Procedure {#procedure}

1.  Disable self-protection.

    To disable self-protection from Server & Workload Protection, see [Configure self-protection through the Server & Workload Protection console](https://docs.trendmicro.com/en-us/documentation/article/trend-micro-cloud-one-workload-security-agent-self-protection).

    Otherwise, use the following steps to disable directly from the endpoint:

    1.  Access **Terminal**.

    2.  To access the agent folder, run the command `cd /Library/Application Support/com.trendmicro.DSAgent`

    3.  To disable self-protection, run the command `sudo ./dsa_control -s 0`

2.  Uninstall the Deep Security agent.

    1.  In **Terminal**, run the following command:

        `sudo /opt/dsa/DSAUninstaller`
