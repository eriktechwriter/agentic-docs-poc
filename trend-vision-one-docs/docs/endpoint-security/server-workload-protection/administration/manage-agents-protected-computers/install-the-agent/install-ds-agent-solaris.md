---
slug: trend-vision-one-install-ds-agent-solaris
sidebar_position: 5
title: Install the agent on Solaris
---

Install the Trend Cloud One or Trend Micro Deep Security agent on supported Solaris endpoints.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to a version of Solaris no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](../../../../../service-management/product-instance/connect-existing-products-to-product-instance)
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](../../../../endpoint-inventory/trend-vision-one-endpoint-security-agent-system-requirements/server-workload-protection-system-requirements).

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](../../../troubleshooting/swp-port-numbers).

- Export the agent software from Server & Workload Protection. For more information, see [Get agent software](../get-agent-software).

:::note
Agent installation is only supported in the global zone.

Solaris requires installing the following libraries to support the agent:

- *Solaris 10:* SUNWgccruntime

- *Solaris 11.0 - 11.3:* gcc-45-runtime

- *Solaris 11.4:* none; gcc-c-runtime version 7.3 is installed by default
:::

### Procedure {#procedure}

1.  Copy the downloaded agent package to the endpoint you want to protect.

    :::note
    Some agent packages are contained in a ZIP file. If your package is contained in a ZIP file, extract the file before continuing.
    :::

2.  In the console, use the following command to extract the agent package GZ file.

    `gunzip <agent_GZ_file>`

    The extracted agent installer file uses either the P5P or PKG extension depending on your version of Solaris.

3.  Install the agent.

    The following is a list of example installation commands. You can modify the commands to fit the needs of your Solaris version, zone, processor, and the package name.

    - For **Solaris 11**, with one zone, run the installation command in the global zone based on your processor architecture.

      - For x86 (32-bit) systems: `pkg install -g file:///mnt/Agent-Solaris_5.11-xx.x.x-xxxx.x86_64/Agent-Core-Solaris_5.11-xx.x.x-xxxx.x86_64.p5p pkg:/security/ds-agent`

      - For SPARC systems: `pkg install -g file:///mnt/Agent-Solaris_5.11-xx.x.x-xxxx.sparc/Agent-Core-Solaris_5.11-xx.x.x-xxxx.sparc.p5p pkg:/security/ds-agent`

    - For **Solaris 11**, with multiple zones, run the following set of commands in the global zone, where `<path>` is the directory location where you want to install the agent:

      ``` codeblock
      mkdir <path>
      pkgrepo create <path>
      pkgrecv -s file://<path_to_agent_p5p_file> -d <path> '*'
      pkg set-publisher -g <path> trendmicro
      pkg install pkg://trendmicro/security/ds-agent
      pkg unset-publisher trendmicro
      rm -rf <path>
      ```

    - For **Solaris 10**, run the installation command based on your processor architecture.

      - For x86 (32-bit) systems: `pkgadd -G -d Agent-Core-Solaris_5.10_Ux-xx.x.x-xxx.x86_64.pkg`

      - For SPARC systems: `pkgadd -G -d Agent-Core-Solaris_5.10_Ux-xx.x.x-xxx.sparc.pkg`

4.  Use the following commands to start, stop, or reset the agent.

    - Start: `svcadm enable ds_agent`

    - Stop: `svcadm disable ds_agent`

    - Reset: `/opt/ds_agent/dsa_control -r`

    - Restart: `svcadm restart ds_agent`

    - Display status: `svcs -a | grep ds_agent`

    After you successfully install the agent, review the following steps to finish setting up your environment:

    - [Activate the agent](../activate-the-agent/activate-agent)

    - [Assign a policy to a computer](../../../policies/create-policies/create-policies)

    To uninstall the agent, use the command for your version of Solaris:

    - To uninstall the agent on Solaris 11: `pkg uninstall pkg:/security/ds-agent`

    - To uninstall the agent on Solaris 10: `pkgrm -v ds-agent`
