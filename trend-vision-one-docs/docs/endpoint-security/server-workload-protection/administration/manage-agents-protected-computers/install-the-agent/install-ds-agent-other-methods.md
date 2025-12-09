---
slug: trend-vision-one-install-ds-agent-other-methods
sidebar_position: 9
title: Install the agent using other methods
---

Install the Trend Cloud One or Trend Micro Deep Security Agent using automation options.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents).

To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features using a deployment script, configure and download the deployment script in **Endpoint Inventory**. For more information, see [Run the deployment script](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents/run-the-deployment-script).

To deploy the Trend Vision One Endpoint Security agent using a software management system, see [Deploying Agents with a Software Management System](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents/deploying-agents-with-a-software-management-system).

To deploy the Trend Vision One Endpoint Security agent to a cloned machine using a template such as a golden image, see [Deployment using a golden image](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents/deployment-using-a-golden-image).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to an operating system no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](../../../../../service-management/product-instance/connect-existing-products-to-product-instance)
:::

If you don't want to install the agent manually, you can use one of the methods described below.

- *Deployment scripts:* Generate deployment scripts within the Server & Workload Protection console and use them to install the agent. For details, see [Use deployment scripts to add and protect computers](../../automate/automate-using-the-console/use-deployment-scripts-to-add-and-protect-computers/deployment-scripts-add-computers).

- Server & Workload Protection API: Use the API to generate deployment scripts to automate the installation of the agent on a computer. See [Use Scripts to Deploy Server & Workload Protection and the agent](../../automate/automate-using-the-api-and-sdk/sdk-guides/deploy-server-workload-protection/use-the-api-to-generate-an-agent-deployment-script/api-generate-agent-deploy).

- *SCCM:* Use Microsoft System Center Configuration Manager (SCCM) to install an agent, activate it, and apply a policy. To use SCCM, go to **Administration → System Settings → Agents** and enable agent-initiated activation.

- *Template:* Include the agent in your VM template. See [Install the agent on an AMI or WorkSpace bundle](../../../computers/add-computers/add-aws-instances/install-the-agent-on-an-ami-or-workspace-bundle/install-agent-ami-workspace) and [Install the agent on Azure VMs](../../../computers/add-computers/azure-instances/install-agent-azure-vms).

- *MDM:* Use Mobile Device Management (MDM) to install an agent, activate it, and apply a policy. See [Configure Mobile Device Management on Server & Workload Protection for the macOS agent](./configure-mdm-macos-agent).
