---
slug: trend-vision-one-uninstalling-agents
sidebar_position: 1
title: Uninstall the Trend Vision One Endpoint Security agent
---

Learn how to remove the Trend Vision One Endpoint Security agent, features, and components from your endpoint.

For Windows and macOS endpoints, an uninstall tool is available in Endpoint Inventory which removes the Trend Vision One Endpoint Security agent and any associated components from your endpoint. Trend Vision One Endpoint Security agent components contain functions for apps including Cyber Risk Assessment, Zero Trust Secure Access, and Endpoint Security.

:::note
If you are not able to locate the uninstall tool in the Trend Vision One console, you might not have permission to perform this action. Contact your system administrator.
:::

To use the uninstall tool, you must have administrator access on the endpoint, and root privileges for macOS. Follow the steps for your endpoint operating system to uninstall the Trend Vision One agent:

- For Windows agents, uninstalling from a single endpoint or using Microsoft Endpoint Configuration Manager, see [Uninstall Windows agents with the tool](./uninstall-windows-agents-tool).

- For Windows agents, uninstalling using Microsoft Intune, see [Uninstall Windows Agents with Microsoft Intune](./uninstall-agents-intune).

- For macOS agents, see [Uninstall macOS Agents with the Tool](./uninstall-macos-agents-tool).

The uninstaller tool currently does not support uninstalling agents from Linux endpoints. To uninstall Trend Vision One agents from your Linux endpoint, see [Manually uninstall Linux agents](./manually-uninstall-linux-agents).

:::note
If you have Deep Security agents connected to your Server & Workload Protection Managers, see [Uninstall Server & Workload Protection from endpoints](./uninstall-server-workload-protection-from-endpoints) for steps on how to manually uninstall the agents.
:::

After you finish uninstalling the agent, the Endpoint Inventory app might take some time to update. However, some endpoints may require you to manually sync the inventory or enable cleanup settings. For more information, see [Cleaning Up Uninstalled Agents](./cleaning-up-uninstalled-agents).

Trend Micro recommends using the uninstaller tool to ensure complete removal of the agent and components. If you prefer to uninstall manually, refer to the following topics:

- [Uninstall the Standard Endpoint Protection Agent](./uninstall-the-standard-endpoint-protection-agent/uninstall-sep-agent)

- [Uninstall Server & Workload Protection from endpoints](./uninstall-server-workload-protection-from-endpoints)

**Related information**

- [Uninstall Windows agents with the tool](./uninstall-windows-agents-tool "Use the uninstall tool to remove agents from Windows endpoints.")
- [Uninstall Windows Agents with Microsoft Intune](./uninstall-agents-intune "Create a Microsoft Intune app to deploy the uninstall tool and remove the Trend Vision One Endpoint Security agent from your endpoints.")
- [Uninstall macOS Agents with the Tool](./uninstall-macos-agents-tool "Use the uninstall tool to remove agents from macOS endpoints.")
- [Manually uninstall Linux agents](./manually-uninstall-linux-agents "Manually remove the agent, Endpoint Sensor, and Server & Workload Protection features from a Linux endpoint.")
- [Uninstall the Standard Endpoint Protection Agent](./uninstall-the-standard-endpoint-protection-agent/uninstall-sep-agent "Manually uninstall the agent from the endpoint or use the web console to automate the process.")
- [Uninstall Server & Workload Protection from endpoints](./uninstall-server-workload-protection-from-endpoints "Manually remove Server & Workload Protection features from your endpoints.")
- [Cleaning Up Uninstalled Agents](./cleaning-up-uninstalled-agents "Configure automatic removal of inactive and uninstalled endpoints from Endpoint Inventory and your Protection Managers.")
