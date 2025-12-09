---
slug: trend-vision-one-swp-agent-deployment
sidebar_position: 3
title: Deploy agents with Server & Workload Protection features
---

Download and install a Trend Vision One Endpoint Security agent with Server & Workload Protection features.

Configure your Server & Workload Protection agent installation packages to ensure that your newly-deployed agents:

- Install the Server & Workload Protection features for your endpoint platform

- Install Endpoint Sensor features

- Report to the correct Server & Workload Protection Manager

- Automatically apply the correct default settings

:::note
Trend Micro recommends that you configure a [default policy](../../../server-workload-protection/policies/create-policies/create-policies) and use the [agent-initiated activation](../../../server-workload-protection/administration/manage-agents-protected-computers/activate-and-protect-agents-using-agent-initiated-activation-and-communication/agent-initiated-activation) feature before deploying agent packages to simplify the connection process.
:::

### Procedure {#procedure}

1.  Go to **Endpoint Security → Endpoint Inventory**.

2.  Click **Agent Installer**.

3.  Select your **Operating system**.

    - **Windows**

    - **Linux**

4.  Specify the package type.

    - **Auto detect**: The installation package is light-weight, and downloads and installs additional components after detecting the operating system type (requires more network bandwidth)

    - **Full package**: The installation package contains all necessary components and automatically installs the correct components after detecting the operating system version

5.  For Linux operating systems, specify the **OS architecture**.

    - **64-bit (x86-64)**

    - **ARM64 (AArch64)**

6.  Select the **Protection Manager** that the newly-deployed agents report to.

7.  Click the **Download installer** icon (![](/images/downloadInstaller=20230617123737.webp)).

8.  Unpack the installation package on the target endpoint.

    :::warning[Important]
    Do not rename, alter, or move any files or folders in the installation package.
    :::

9.  Run the installation package on your target endpoints.

    - For Windows endpoints, run `EndpointBasecamp.exe` to install the agent.

    - For Linux endpoints, open terminal and run the command `# ./tmxbc install` to install the agent.

    The installation package installs the Trend Vision One Endpoint Sensor agent with Server & Workload Protection and Endpoint Sensor features.
