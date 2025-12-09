---
slug: trend-vision-one-install-ds-agent-ubuntu-or-debian
sidebar_position: 4
title: Install the agent on Ubuntu or Debian
---

Install the Trend Cloud One or Trend Micro Deep Security agent on supported Ubuntu and Debian endpoints.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to a version of Linux no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](../../../../../service-management/product-instance/connect-existing-products-to-product-instance)
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](../../../../endpoint-inventory/trend-vision-one-endpoint-security-agent-system-requirements/server-workload-protection-system-requirements).

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](../../../troubleshooting/swp-port-numbers).

- Export the agent software from Server & Workload Protection. For more information, see [Get agent software](../get-agent-software).

### Procedure {#procedure}

1.  Copy the downloaded agent package to the endpoint you want to protect.

    :::note
    Some agent packages are contained in a ZIP file. If your package is contained in a ZIP file, extract the file before continuing.
    :::

2.  To install the agent, run the following command from the system console:

    `sudo dpkg -i <installer deb file>`

    Where `<installer deb file>` is the file name of the installer with the `.deb` extension.

    For example, the DEB file for Ubuntu 24 looks like `Agent-Core-Ubuntu_24.xx-xx.x.x-xxxx.x86_64.deb`

3.  Use the following commands to start, stop, or reset the agent.

    For using SysV init scripts:

    - Start: `/etc/init.d/ds_agent start`

    - Stop: `/etc/init.d/ds_agent stop`

    - Reset: `/etc/init.d/ds_agent reset`

    - Restart: `/etc/init.d/ds_agent restart`

    - Display status: `svcs -a | grep ds_agent`

    For using systemd commands:

    - Start: `systemctl start ds_agent`

    - Stop: `systemctl stop ds_agent`

    - Restart: `systemctl restart ds_agent`

    - Display status: `systemctl status ds_agent`

    After you successfully install the agent, review the following steps to finish setting up your environment:

    - [Activate the agent](../activate-the-agent/activate-agent)

    - [Assign a policy to a computer](../../../policies/create-policies/create-policies)
