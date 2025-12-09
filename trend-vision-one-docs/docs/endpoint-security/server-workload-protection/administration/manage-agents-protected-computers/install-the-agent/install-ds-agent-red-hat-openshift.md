---
slug: trend-vision-one-install-ds-agent-red-hat-openshift
sidebar_position: 8
title: Install the agent on Red Hat OpenShift
---

Install the Trend Cloud One or Trend Micro Deep Security agent on supported Red Hat OpenShift endpoints.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents).

To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features using a deployment script, configure and download the deployment script in **Endpoint Inventory**. For more information, see [Run the deployment script](../../../../getting-started-with-trend-vision-one-endpoint-security/manage-your-agent-deployments/deploy-agents/run-the-deployment-script).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to an operating system no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](../../../../../service-management/product-instance/connect-existing-products-to-product-instance)

The following steps are no longer considered valid and are included for reference use only.
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](../../../../endpoint-inventory/trend-vision-one-endpoint-security-agent-system-requirements/server-workload-protection-system-requirements).

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](../../../troubleshooting/swp-port-numbers).

- Ensure that you have Helm version 3 or newer installed.

- Ensure that you have enabled agent-initiated activation (AIA). AIA is required if you want your deployment script to activate the agent after installation. For more information, see [Activate and protect agents using agent-initiated activation and communication](../activate-and-protect-agents-using-agent-initiated-activation-and-communication/agent-initiated-activation).

### Procedure {#procedure}

1.  In Server & Workload Protection, go to **Administration → Software → Local**.

2.  Click **Generate Deployment Scripts...**

3.  For **Platform**, select **OpenShift Agent Deployment**.

4.  Configure the deployment options as needed for your security environment.

    <table>
    <colgroup>
    <col style="width: 33%" />
    <col style="width: 67%" />
    </colgroup>
    <thead>
    <tr>
    <th><p>Option</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td><p><strong>Security Policy</strong></p></td>
    <td><p>Select the policy you want to assign to the endpoint</p></td>
    </tr>
    <tr>
    <td><p><strong>Computer Group</strong></p></td>
    <td><p>Select a computer group for the endpoint</p></td>
    </tr>
    <tr>
    <td><p><strong>Relay Group</strong></p></td>
    <td><p>Select a relay group for the endpoint</p></td>
    </tr>
    <tr>
    <td><p><strong>Proxy to contact Workload Security Manager</strong></p></td>
    <td><p>Select which proxy the endpoint should use when connecting to Trend Micro services</p></td>
    </tr>
    <tr>
    <td><p><strong>Proxy to contact Relay(s)</strong></p></td>
    <td><p>Select which proxy the endpoint should use when connecting to relays</p></td>
    </tr>
    </tbody>
    </table>

5.  Save the script.

    - To download the generated script as a bash (.sh) file, click **Save to File...**

    - To copy the script, click **Copy to Clipboard**.

    After you successfully install the agent, review the following steps to finish setting up your environment:

    - [Activate the agent](../activate-the-agent/activate-agent)

    - [Assign a policy to a computer](../../../policies/create-policies/create-policies)
