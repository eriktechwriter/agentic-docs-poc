---
slug: trend-vision-one-install-ds-agent-other-methods
title: Install the agent using other methods
---

Install the Trend Cloud One or Trend Micro Deep Security Agent using automation options.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](deploy-agents.md).

To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features using a deployment script, configure and download the deployment script in **Endpoint Inventory**. For more information, see [Run the deployment script](using-endpoint-deployment-script.md).

To deploy the Trend Vision One Endpoint Security agent using a software management system, see [Deploying Agents with a Software Management System](deploy-agents-manage-system.md).

To deploy the Trend Vision One Endpoint Security agent to a cloned machine using a template such as a golden image, see [Deployment using a golden image](deployment-using-golden-image.md).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to an operating system no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](connect-exist-prod-instance.md)
:::

If you don't want to install the agent manually, you can use one of the methods described below.

- *Deployment scripts:* Generate deployment scripts within the Server & Workload Protection console and use them to install the agent. For details, see [Use deployment scripts to add and protect computers](deployment-scripts-add-computers.md).

- Server & Workload Protection API: Use the API to generate deployment scripts to automate the installation of the agent on a computer. See [Use Scripts to Deploy Server & Workload Protection and the agent](api-generate-agent-deploy.md).

- *SCCM:* Use Microsoft System Center Configuration Manager (SCCM) to install an agent, activate it, and apply a policy. To use SCCM, go to **Administration → System Settings → Agents** and enable agent-initiated activation.

- *Template:* Include the agent in your VM template. See [Install the agent on an AMI or WorkSpace bundle](install-agent-ami-workspace.md) and [Install the agent on Azure VMs](install-agent-azure-vms.md).

- *MDM:* Use Mobile Device Management (MDM) to install an agent, activate it, and apply a policy. See [Configure Mobile Device Management on Server & Workload Protection for the macOS agent](configure-mdm-macos-agent.md).
