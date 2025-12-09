---
slug: trend-vision-one-endpoint-sensor-agent-deployment
sidebar_position: 4
title: Deploy agents with only Endpoint Sensor features
---

Download and install a Trend Vision One Endpoint Security agent with only Endpoint Sensor features.

Configure your Endpoint Sensor agent installation packages to ensure that your newly-deployed agents:

- Install Endpoint Sensor features

- Report to Endpoint Inventory

- Automatically apply the correct default settings

After installing on an endpoint, the agent automatically connects to the assigned Endpoint Group Manager and protection starts immediately. If your network includes virtual desktops, you can set up the [agent for VDI environments](./deployment-using-a-golden-image/create-golden-agent-image).

### Procedure {#procedure}

1.  Go to **Endpoint Security → Endpoint Inventory**.

2.  Click **Agent Installer**.

3.  Under **Endpoint Sensor**, select your **Operating system**.

    - **Windows**

    - **macOS**

    - **Linux**

4.  For Linux operating systems, specify the package type.

    - **Auto detect**: The installation package is light-weight, and downloads and installs additional components after detecting the operating system type (requires more network bandwidth)

    - **Full package**: The installation package contains all necessary components and automatically installs the correct components after detecting the operating system version

5.  For Windows and Linux operating systems, select the **OS architecture**.

    - For Windows, select **64-bit (x86-64)** or **32-bit (x86)**.

    - For Linux, select **64-bit (x86-64)** or **ARM64 (AArch64)**.

6.  Click the **Download installer** icon (![](/images/downloadInstaller=20230617123737.webp)).

7.  Unpack the installation package on the target endpoint.

    :::warning[Important]
    Do not rename, alter, or move any files or folders in the installation package.
    :::

8.  Run the installation package on your target endpoints.

    - For Windows endpoints, run `EndpointBasecamp.exe` to install the agent.

    - For macOS endpoints, double-click `endpoint_basecamp.pkg` to install the agent.

    - For Linux endpoints, open terminal and run the command `# ./tmxbc install` to install the agent.

    :::note
    For macOS endpoints, you must provide administrator credentials to complete the installation.
    :::

    The installation package installs the Trend Vision One Endpoint Sensor agent with Server & Workload Protection and Endpoint Sensor features.
