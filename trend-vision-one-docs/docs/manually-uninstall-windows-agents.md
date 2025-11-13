---
slug: trend-vision-one-manually-uninstall-windows-agents
title: Manually uninstall Server & Workload Protection from Windows
---

Manually remove Server & Workload Protection features or a Deep Security agent from a Windows endpoint.

The steps contained within this guide only remove Server & Workload Protection features or deployed Deep Security agents. If you are attempting to remove the Trend Vision One Endpoint Security agent from a Windows endpoint, use the uninstall tool to ensure a clean and complete removal.

- [Uninstall Windows agents with the tool](uninstall-windows-agents-tool.md)

- [Uninstall Windows Agents with Microsoft Intune](uninstall-agents-intune.md)

You can use the following steps to manually remove Server & Workload Protection functions or a connected Deep Security agent from your Windows endpoints.

:::note
If you are manually removing Server & Workload Protection or uninstalling a Deep Security agent, the agent does not notify your Protection Managers when uninstalling. The affected endpoint appears on the **Computers** page with a status of "Managed (Offline)" or similar. To resolve the issue:

- Deactivate the agent before you uninstall Server & Workload Protection, or

- Delete the computer from the list after you uninstall Server & Workload Protection.
:::

### Procedure {#procedure}

1.  Before you uninstall, disable agent self-protection.

    1.  In the Trend Vision One console, access your Server & Workload Protection Manager.

    2.  Go to **Computers** and double click on the endpoint you want to uninstall Server & Workload Protection.

    3.  In the **Computer editor**, go to **Settings → General**.

    4.  Configure **Agent Self Protection**.

        To allow the agent to disable **Agent Self Protection**, configure one of the following:

        - Set **Prevent local end-users from uninstalling, stopping, or otherwise modifying the Agent** to **No**.

        - Set **Local override requires password** to **Yes** and provide a password.

    5.  Click **Save**.

2.  Deactivate the agent in Server & Workload Protection.

    1.  Go to **Computers**.

    2.  Right click the target endpoint and select **Actions → Deactivate**.

        If you are unable to deactivate the agent because Server & Workload Protection is unable to communicate with the agent, open PowerShell on the endpoint and run the command:

        `C:\Program Files\Trend Micro\Deep Security Agent>dsa_control --selfprotect 0`

3.  To uninstall using the Windows interface, uninstall from Control Panel.

    1.  On the target endpoint, open **Control Panel**.

    2.  Select **Uninstall a program**.

    3.  Locate **Trend Micro Deep Security Agent** and click **Uninstall**.

    4.  If you installed the notifier, from **Control Panel**, go to **Add/Remove Programs**.

    5.  Locate **Trend Micro Deep Security Notifier** and click **Remove**.

4.  To uninstall using commands, uninstall from PowerShell.

    1.  Open **PowerShell**.

    2.  Run the uninstall command.

        `msiexec /x <package name including extension>`

        To run a silent uninstall, add the parameter `/quiet`.

    3.  If you installed the notifier, run the following command to uninstall the notifier:

        `msiexec /x <package name including extension>`
