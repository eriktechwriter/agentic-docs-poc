---
slug: trend-vision-one-install-agent
sidebar_position: 1
title: Install the agent
---

Install the Trend Cloud One or Trend Micro Deep Security agent on your endpoints.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](../../../../endpoint-inventory/trend-vision-one-endpoint-security-agent-system-requirements/server-workload-protection-system-requirements).

- For Windows deployments, [disable Windows Defender on Windows Server 2016 or later.](../../../configure-protection-modules/configure-anti-malware/anti-malware-set-up/ds-defender-antivirus-win)

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](../../../troubleshooting/swp-port-numbers).

- Export the agent software from Server & Workload Protection. For more information, see [Get agent software](../get-agent-software).

Once you are ready, follow the instructions for your operating system and preferred installation method.

- Install the agent manually:

  - [Install the agent on Windows](./install-ds-agent-windows)

  - [Install the agent on Red Hat, Amazon, SUSE, Oracle, or Cloud Linux](./install-ds-agent-linux)

  - [Install the agent on Ubuntu or Debian](./install-ds-agent-ubuntu-or-debian)

  - [Install the agent on Solaris](./install-ds-agent-solaris)

  - [Install the agent on AIX](./install-ds-agent-aix)

  - [Install the agent on macOS](./install-ds-agent-macos)

  - [Install the agent on Red Hat OpenShift](./install-ds-agent-red-hat-openshift)

- [Install the agent using other methods](./install-ds-agent-other-methods)

**Related information**

- [Install the agent on Windows](./install-ds-agent-windows "Install the Trend Cloud One or Trend Micro Deep Security agent on Windows.")
- [Install the agent on Red Hat, Amazon, SUSE, Oracle, or Cloud Linux](./install-ds-agent-linux "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Linux endpoints.")
- [Install the agent on Ubuntu or Debian](./install-ds-agent-ubuntu-or-debian "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Ubuntu and Debian endpoints.")
- [Install the agent on Solaris](./install-ds-agent-solaris "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Solaris endpoints.")
- [Install the agent on AIX](./install-ds-agent-aix "Install the Trend Cloud One or Trend Micro Deep Security agent on supported AIX endpoints.")
- [Install the agent on macOS](./install-ds-agent-macos "Install the Trend Cloud One or Trend Micro Deep Security agent on supported macOS endpoints.")
- [Install the agent on Red Hat OpenShift](./install-ds-agent-red-hat-openshift "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Red Hat OpenShift endpoints.")
- [Install the agent using other methods](./install-ds-agent-other-methods "Install the Trend Cloud One or Trend Micro Deep Security Agent using automation options.")
- [Configure Mobile Device Management on Server & Workload Protection for the macOS agent](./configure-mdm-macos-agent)
