---
slug: trend-vision-one-install-agent
title: Install the agent
---

Install the Trend Cloud One or Trend Micro Deep Security agent on your endpoints.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](deploy-agents.md).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](swp-agent-sys-requirements.md).

- For Windows deployments, [disable Windows Defender on Windows Server 2016 or later.](ds-defender-antivirus-win.md)

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](swp-port-numbers.md).

- Export the agent software from Server & Workload Protection. For more information, see [Get agent software](get-agent-software.md).

Once you are ready, follow the instructions for your operating system and preferred installation method.

- Install the agent manually:

  - [Install the agent on Windows](install-ds-agent-windows.md)

  - [Install the agent on Red Hat, Amazon, SUSE, Oracle, or Cloud Linux](install-ds-agent-linux.md)

  - [Install the agent on Ubuntu or Debian](install-ds-agent-ubuntu-or-debian.md)

  - [Install the agent on Solaris](install-ds-agent-solaris.md)

  - [Install the agent on AIX](install-ds-agent-aix.md)

  - [Install the agent on macOS](install-ds-agent-macos.md)

  - [Install the agent on Red Hat OpenShift](install-ds-agent-red-hat-openshift.md)

- [Install the agent using other methods](install-ds-agent-other-methods.md)

**Related information**

- [Install the agent on Windows](install-ds-agent-windows.md "Install the Trend Cloud One or Trend Micro Deep Security agent on Windows.")
- [Install the agent on Red Hat, Amazon, SUSE, Oracle, or Cloud Linux](install-ds-agent-linux.md "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Linux endpoints.")
- [Install the agent on Ubuntu or Debian](install-ds-agent-ubuntu-or-debian.md "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Ubuntu and Debian endpoints.")
- [Install the agent on Solaris](install-ds-agent-solaris.md "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Solaris endpoints.")
- [Install the agent on AIX](install-ds-agent-aix.md "Install the Trend Cloud One or Trend Micro Deep Security agent on supported AIX endpoints.")
- [Install the agent on macOS](install-ds-agent-macos.md "Install the Trend Cloud One or Trend Micro Deep Security agent on supported macOS endpoints.")
- [Install the agent on Red Hat OpenShift](install-ds-agent-red-hat-openshift.md "Install the Trend Cloud One or Trend Micro Deep Security agent on supported Red Hat OpenShift endpoints.")
- [Install the agent using other methods](install-ds-agent-other-methods.md "Install the Trend Cloud One or Trend Micro Deep Security Agent using automation options.")
- [Configure Mobile Device Management on Server & Workload Protection for the macOS agent](configure-mdm-macos-agent.md)
