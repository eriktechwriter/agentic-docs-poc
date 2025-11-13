---
slug: trend-vision-one-restore-identified-files
title: Restore identified files
---

Restore a file Server & Workload Protection encrypted and quarantined in response to detecting malware in the file.

:::danger[Warning]
Restoring an infected file can spread the virus/malware to other files and computers. Before restoring the file, isolate the infected endpoint and move important files on this endpoint to a backup location.
:::

To restore an identified file, you must first create an exclusion to prevent Server & Workload Protection from immediately identifying and quarantining the file again. Use the following steps to create the exclusion and restore the identified file from the console.

:::note
The following steps apply the exception to a specific computer. However, you can use the same method to apply the exception at the policy level if you want to prevent Server & Workload Protection from identifying the file on other endpoints.

To manually restore a downloaded file, see [Manually restore identified files](manually-restore-identified-files.md).
:::

### Procedure {#procedure}

1.  In the Trend Vision One console, access the Server & Workload Protection instance managing the infected endpoint.

2.  Go to **Computers** and open the details for the affected computer.

3.  Go to **Anti-Malware → Identified Files**.

4.  Locate the file you want to restore and click ![](/images/details=6adf47dd-913c-4586-8dcf-b57640800e39.webp) **View** to open the **Details** window.

    Use the filters or [advanced search](search-for-identified-file.md) to find the file you want to restore.

5.  Copy the exact file name and original location.

6.  Go to **Anti-Malware → General**.

7.  Edit the **Malware Scan Configuration** for each scan type.

    Repeat these steps for **Real-Time Scan**, **Manual Scan**, and **Scheduled Scan**.

    1.  Under the scan type you want to configure, locate **Malware Scan Configuration** and click **Edit**.

    2.  Go to the **Exclusions** tab.

    3.  Enable **File List** and select a list to edit.

        :::note
        Select **New...** from the list of file lists if a list does not already exist.
        :::

    4.  To edit the file list, click **Edit**.

    5.  In the **File(s)** field, specify the original full file path of the file you want to restore.

        A full file path includes the root drive, all folder names, file name, and file extension. For example:

        `C:\Documents\example.doc`

    6.  Click **OK** to close the File List.

    7.  Click **OK** to close the Malware Scan Configuration.

8.  Once you have configured all scan types, click **Save** to apply the exception to the endpoint.

9.  With the computer details screen still open, go to **Anti-Malware → Identified Files**.

10. Select the file you want to restore and click ![](/images/anti_malware_restore_quarantine_file=85554c91-00a0-4d05-a30c-0bfe0d6139f9.webp) **Restore**.

    Follow the steps in the on-screen wizard to restore the file.
