---
slug: trend-vision-one-manage-credential-profiles
title: Manage Credential Vault credential profiles
---

Create, modify, and delete stored credential profiles used to run network vulnerability scans that require authentication.

:::warning[Important]
- This is a "Pre-release" feature and is not considered an official release. Please review the [Pre-release disclaimer](pre-release-disclaimer.md) before using the feature.

- Use of the Credential Vault requires the Network Vulnerability Scanner service version 1.1.3 or later. Update the service in [Service Gateway Management](managing-services-service-gateway.md).

- User accounts must have the **Access Credential Vault** permission under **Cyber Risk Exposure Management → Vulnerability Management** to use credential profiles and the**Manage Credential Vault** permission to create, modify, or delete credential profiles.
:::

### Procedure {#procedure}

1.  To securely store authentication information for reuse when creating [vulnerability scans](vuln-scan.md), create a new credential profile.

    1.  In **Cyber Risk Exposure Management → Vulnerability Management → Network Vulnerability Scanner**, click **Credential Vault**.

    2.  Click **Create credential profile**.

    3.  Specify a unique name for the credential profile.

        :::tip
        Specifying a descriptive name allows other users to more easily find the correct credential profile to use when creating a scan.
        :::

    4.  Provide an optional description for the credential profile.

    5.  Select an authentication method.

        - Secure Shell (SSH) with private key or password

          - Private keys can consist of up to a maximum of 4,096 characters.

        - SNMPv2c with community string and port

        - SNMPv3 with one of the following security levels:

          - Authentication and encryption

          - Encryption only

    6.  Specify the additional information required for the authentication method.

    7.  Click **Save**.

        The new credential profile appears in the Credential Vault.

2.  Click the name of an existing credential profile to view the credential profile details and modify the credential profile authentication information.

    :::note
    - You can also view a list of scans that use the selected credential profile in the credential profile details.

    - Stored authentication information, including user names, keys, and passwords, is not viewable after the credential profile is created.
    :::

3.  Click the delete icon (![](/images/trash_icon=GUID-47cf6867-6315-438e-8670-86ff36f22a28.webp)) to remove a credential profile.

    :::warning[Important]
    If you remove a credential profile that is currently associated with one or more scans, the associated scans will fail to run. To re-enable the scan, you must reconfigure the scan authentication credentials.
    :::

4.  To use a saved credential profile in a vulnerability scan, select the credential profile when [configuring the scan authentication credentials](vuln-scan.md).
