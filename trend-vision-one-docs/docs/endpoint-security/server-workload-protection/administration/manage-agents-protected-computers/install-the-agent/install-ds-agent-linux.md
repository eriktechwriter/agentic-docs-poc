---
slug: trend-vision-one-install-ds-agent-linux
sidebar_position: 3
title: Install the agent on Red Hat, Amazon, SUSE, Oracle, or Cloud Linux
---

Install the Trend Cloud One or Trend Micro Deep Security agent on supported Linux endpoints.

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

    `# sudo rpm -i <package name>`

    After you successfully install the agent, review the following steps to finish setting up your environment:

    - [Activate the agent](../activate-the-agent/activate-agent)

    - [Assign a policy to a computer](../../../policies/create-policies/create-policies)
