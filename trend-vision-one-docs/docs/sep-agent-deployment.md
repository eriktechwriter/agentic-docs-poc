---
slug: trend-vision-one-sep-agent-deployment
title: Deploy agents with Standard Endpoint Protection features
---

Install the Trend Vision One Endpoint Security agent with Standard Endpoint Protection security features.

:::warning[Important]
The Endpoint Sensor currently does not support Windows 11 ARM64. You can still deploy the Trend Vision One Endpoint Security agent with Standard Endpoint Protection features to monitor your Windows 11 ARM64 endpoints, but Endpoint Sensor cannot be enabled at this time. Additional support is coming soon.
:::

Configure your Trend Vision One Endpoint Security agent installation packages to ensure that your newly-deployed agents:

- Install the Standard Endpoint Protection features for your endpoint platform

- Install Endpoint Sensor features

- Report to the correct Endpoint Group Manager

- Automatically apply the correct default settings

After installing on an endpoint, the agent automatically connects to the assigned Endpoint Group Manager and protection starts immediately. If your network includes virtual desktops, you can set up the [agent for VDI environments](create-golden-agent-image.md).

### Procedure {#procedure}

1.  Go to **Endpoint Security → Endpoint Inventory**.

2.  Click **Agent Installer**.

3.  Under **Standard Endpoint Protection**, select your **Operating system**.

    - **Windows**

    - **macOS**

4.  For Windows operating systems, specify the **OS architecture**.

    - **64-bit (x86-64)**

    - **32-bit (x86)**

    - **ARM64 (AArch64)**

5.  Select the **Endpoint Group Manager** that the newly-deployed agents report to.

6.  Click the **Download installer** icon (![](/images/downloadInstaller=20230617123737.webp)).

7.  Unpack the installation package on the target endpoint.

    :::warning[Important]
    Do not rename, alter, or move any files or folders in the installation package.

    The installer package can automatically uninstall existing security solutions (except Trend Micro solutions) during installation if not password-protected. If your current antivirus solution has a password, remove the password before running the installer.

    To check which third-party security solutions can be automatically uninstalled by the agent installer, refer to the [Standard Endpoint Protection FAQs](standard-endpoint-protection-faqs.md).
    :::

8.  Run the installation package on your target endpoints.

    - For Windows endpoints, run `EndpointBasecamp.exe` to install the agent.

    - For macOS endpoints, double-click `endpoint_basecamp.pkg` to install the agent.

    :::note
    For macOS endpoints, you must provide administrator credentials to complete the installation.
    :::

    The installation package installs the Trend Vision One Endpoint Sensor agent with Standard Endpoint Protection and Endpoint Sensor features.
