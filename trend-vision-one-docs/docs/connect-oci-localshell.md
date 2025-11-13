---
slug: trend-vision-one-connect-oci-localshell
title: Connect an OCI compartment using LocalShell
---

Add and connect an Oracle compartment using LocalShell to Cloud Accounts to allow Trend Vision One to provide security for your cloud assets.

Adding an OCI compartment to the Cloud Accounts app allows Trend Vision One to access your cloud service to provide security and visibility into your cloud assets. Before you begin, review the [permission requirements](oracle-required-granted-permissions.md) and [region limitations](oracle-supported-regions.md) for connecting an OCI compartment to Cloud Accounts.

To deploy using LocalShell, you must ensure you are using the following:

- **Supported operating systems**: macOS, Linux, or Windows with a WSL (Windows Subsystem for Linux) environment

- **Supported shell environments**: Bash, Zsh.

- **Supported CLI**: OCI Command Line Interface (CLI). For instructions on installing and configuring the OCI CLI, see the [Oracle Cloud Infrastructure QuickStart guide](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm).

### Procedure {#procedure}

1.  Sign in to the Trend Vision One console.

2.  In a new tab in the same browser session, log in to the Oracle Cloud Console.

3.  In the Trend Vision One console, go to **Cloud Security → Cloud Accounts → Oracle**.

4.  In the **Cloud Accounts** screen, click **Add Compartment**.

    The **Add Oracle Compartment** screen opens.

5.  Specify the general information for the compartment:

    1.  Specify the **Tenancy OCID** (Oracle Cloud Identifier) for your tenancy in OCI.

    2.  Specify the **Compartment OCID** for the compartment you want to connect.

        You can find the OCID in the Oracle Console in **Compartment Details**.

    3.  Specify the **Identity Domain OCID**, which is the identity domain where the Identity Access Management (IAM) resources created by the Terraform template will be deployed.

        :::warning[Important]
        You must replicate the domain from the home region to the regions where cloud assets will be monitored and managed. For more information, see [Replicating an Identity Domain to Multiple Regions](https://docs.oracle.com/en-us/iaas/Content/Identity/domains/to-manage-regions-for-domains.htm) in the Oracle Cloud Infrastructure documentation.
        :::

    4.  Specify a **Name** for the account, which is how the account will be identified in the Cloud Accounts list.

    5.  Optionally, provide a **Description** of the OCI compartment.

    6.  Click **Next**.

6.  Configure the **Features and Permissions** you want to grant access to your cloud environment.

    - **Core Features and Cyber Risk Exposure Management**: Connect your OCI compartment to Trend Vision One to discover your cloud assets and rapidly identify risks such as compliance and security best practice violations on your cloud infrastructure.

    - **Cyber Risk Exposure Management - Cloud account assessment**: Discover and assess your cloud assets for attack exposure, risk factors, and security posture.

      :::note
      This feature requires credits, which are calculated based on asset count after onboarding the Oracle compartment.
      :::

    - **Agentless Vulnerability & Threat Detection**: Discover vulnerabilities and malware in your OCI block volumes, OCI boot volumes attached to compute instances, and OCI Container Registry images.

      To ensure successful Agentless Vulnerability & Threat Detection deployment, [review and complete the pre-deployment steps](avtd-oci-predeployment.md) for enabling Agentless Vulnerability & Threat Detection in OCI environments.

    For more information about each feature and permission set, see [Oracle Cloud Infrastructure (OCI) features and permissions](oracle-features-permissions.md).

7.  Click **Next**.

8.  Select **LocalShell Deployment**.

    :::note
    If you enabled Agentless Vulnerability & Threat Detection in the previous step, the **LocalShell Deployment** option is already selected and the **OCI Resource Manager Deployment** option is not available.
    :::

9.  Configure the OCI Command Line Interface (CLI) profile:

    1.  Copy the command from Trend Vision Oneand paste it into the terminal.

    2.  Follow the prompts to provide the Tenancy OCID, User OCID, and region.

10. Upload the public key to the OCI console:

    1.  Copy the public key from `~/.oci/oci_api_key_public.pem`

    2.  In the OCI console, go to **Identity & Security** ➞ **Users** ➞ \[your username\] ➞ **API Keys**.

    3.  Click **Add API Key ➞ Paste Public Key.**

    4.  Paste the public key that you copied at the beginning of this step.

11. Verify that the OCI CLI has been installed by copying and pasting the command from Trend Vision One into the terminal:

    - If the CLI has been installed, the terminal returns a list of available regions.

    - If you receive a failure message, check the OCIDs, region name, and key permissions, and then try again.

12. Install Terraform or confirm that it is already installed by copying and pasting the command from Trend Vision One in the terminal.

    :::note
    Terraform 1.13 or later is required.
    :::

13. Click **Download the Terraform Template** to save and unzip the template in your local machine.

14. Access the deployment folder by copying the command and pasting it in the terminal.

15. Run the deployment script by copying the commands and pasting them in the terminal.

    LocalShell begins the Terraform process to deploy Trend Vision One security resources.

16. In the Trend Vision One console, in the Add Oracle Compartment screen, click **Done**.

    The connection process might take a few moments to complete. You can refresh the Cloud Accounts screen to check the status of your added compartment.
