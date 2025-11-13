---
slug: trend-vision-one-real-time-scan-scan-exclusion-tab
title: 'Real-time Scan: Scan Exclusion Tab'
---

### Procedure {#procedure}

1.  Select **Enable scan exclusion**.

2.  In the **Scan Exclusion List (Directories)** section, configure the required settings.

    ![](/images/SEP-RealTimeScanExclusions=6a1f54a8-e7ae-457c-9faf-2de8337b825b.webp)

    1.  Select **Exclude directories where Trend Micro products are installed** to automatically exclude directories associated with other Trend Micro products.

        For more information, see [Trend Micro Product Directory Exclusions](product-directory-exclusions.md).

    2.  When configuring a parent policy, specify how other users can configure child policies.

        - **Inherit from parent**: Child policies must use the settings configured in the parent policy

        - **Extend from parent**: Child policies can append additional settings to the settings inherited from the parent policy

          :::note
          If your child policies **Extend from parent**, you can configure **Child Policy Restrictions** to prevent child policies from adding specified rules to the Rule Exceptions list.
          :::

    3.  Type a directory path to exclude from scans and click the **+** button.

        The Trend Vision One Endpoint Security agent does not scan files located in the specified directory (and sub-directories).

        :::note
        - You can specify a maximum of 256 directories to exclude from scanning.

        - Use the **Import** and **Export** buttons to share the list with different policies.

        - Directory exclusions support the use of wildcard characters.

          For more information, see [Wildcard Exceptions](wildcard-exceptions.md).
        :::

3.  In the **Scan Exclusion List (Files)** section, configure the required settings.

    ![](/images/SEP-RealTimeScanExclusionList=523fc36f-d08f-4b1d-8510-e0cbf9c87f4e.webp)

    1.  When configuring a parent policy, specify how other users can configure child policies.

        - **Inherit from parent**: Child policies must use the settings configured in the parent policy

        - **Extend from parent**: Child policies can append additional settings to the settings inherited from the parent policy

    2.  Type a file name or the file name with full directory path to exclude from scans and click the **+** button.

        :::note
        - You can specify a maximum of 256 files to exclude from scanning.

        - Use the **Import** and **Export** buttons to share the list with different policies.

        - File exclusions support the use of wildcard characters.

          For more information, see [Wildcard Exceptions](wildcard-exceptions.md).
        :::

4.  In the **Scan Exclusion List (File Extensions)** section, configure the required settings.

    ![](/images/SEP-RealTimeFileExtExclu=5839d0fb-3b98-41a5-8938-6a0ac86b6fde.webp)

    1.  When configuring a parent policy, specify how other users can configure child policies.

        - **Inherit from parent**: Child policies must use the settings configured in the parent policy

        - **Extend from parent**: Child policies can append additional settings to the settings inherited from the parent policy

    2.  Select or type a file extension to exclude from scans and click the **Add \>** button.

        :::note
        - You can specify a maximum of 256 file extensions to exclude from scanning.

        - Use the **Import** and **Export** buttons to share the list with different policies.

        - Real-time Scan does not support the use of wildcard characters for file extension exclusions.
        :::
