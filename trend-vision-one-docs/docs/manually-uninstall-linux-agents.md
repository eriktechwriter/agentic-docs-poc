---
slug: trend-vision-one-manually-uninstall-linux-agents
title: Manually uninstall Linux agents
---

Manually remove the agent, Endpoint Sensor, and Server & Workload Protection features from a Linux endpoint.

The steps contained within this guide can be used to remove the following from your Linux endpoints:

- All Trend Vision One Endpoint Security agent components, including Endpoint Sensor and Server & Workload Protection features

- Only Server & Workload Protection features

- Deep Security agents connected to your Protection Managers

:::note
If you are manually removing Server & Workload Protection or uninstalling a Deep Security agent, the agent does not notify your Protection Managers when uninstalling. The affected endpoint appears on the **Computers** page with a status of "Managed (Offline)" or similar. To resolve the issue:

- Deactivate the agent before you uninstall Server & Workload Protection, or

- Delete the computer from the list after you uninstall Server & Workload Protection.
:::

If you are attempting to redeploy an agent, Trend Micro recommends doing a complete uninstall of the Trend Vision One Endpoint Security agent.

### Procedure {#procedure}

1.  Uninstall Server & Workload Protection.

    Use one of the following methods to uninstall Server & Workload Protection:

    :::note
    These methods can also be used to remove a Deep Security agent.
    :::

    - If your version of Linux provides a graphical package management tool, search for the `ds_agent` package and use the tool to remove the package.

    - For Linux versions that use the Red Hat package manager (rpm), run the command:

      `# sudo rpm -ev ds_agent`

    - For Linux versions that use the Debian package manager (dpkg), run the following commands:

      - `$ sudo dpkg -r ds-agent`

      - `$ sudo dpkg --purge ds-agent`

2.  Uninstall the Trend Vision One Endpoint Security agent.

    To remove the Trend Vision One Endpoint Security agent, Endpoint Sensor, and Basecamp agent program, run the command with root privileges:

    `# ./tmxbc uninstall`
