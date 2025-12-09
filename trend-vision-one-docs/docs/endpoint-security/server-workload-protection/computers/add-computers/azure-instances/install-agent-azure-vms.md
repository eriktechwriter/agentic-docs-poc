---
slug: trend-vision-one-install-agent-azure-vms
sidebar_position: 3
title: Install the agent on Azure VMs
---

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features using a deployment script, configure and download the deployment script in **Endpoint Inventory**. For more information, see [Run the deployment script](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents/run-the-deployment-script).

The following steps are no longer considered valid and are included for reference use only.
:::

To install the agent on VM instances running in the Microsoft Azure cloud, you need to deploy agents to them. You can do this in multiple ways:

- You can generate deployment scripts for automatically deploying agents using deployment tools such as RightScale, Chef, Puppet, and SSH. For more information on how to do so, see [Use deployment scripts to add and protect computers](../../../administration/automate/automate-using-the-console/use-deployment-scripts-to-add-and-protect-computers/deployment-scripts-add-computers).

- You can add a custom script extension to an existing virtual machine to deploy and activate the agent. To do this, navigate to your existing virtual machine in the Azure management portal and follow the steps below to upload and execute the deployment script on your Azure VM.

To add a custom script extension to an existing virtual machine:

### Procedure {#procedure}

1.  Log in to the Azure portal.

2.  Switch to the preview portal, and then click the virtual machine that you want to add the custom script to.

3.  In the Settings blade, click *Extensions*, in the *Extensions* blade, click *Add extension*, in the *New Resource* blade, select *Custom Script*, and then click *Create*.

4.  In the *Add Extension* blade under *Script File (required)*, click *upload*, select the saved .ps1 deployment script, and then click *OK*.

### Next steps {#next-steps}

![](/images/azure-add-customscript=1fa2642c-37c1-436f-a738-e981cb88e6c8.webp)
