---
slug: trend-vision-one-adding-oracle-cloud-compartment
sidebar_position: 2
title: Connect an OCI compartment using Oracle Resource Manager (ORM)
---

Add and connect an Oracle compartment using Oracle Resource Manager (ORM) to the Cloud Accounts app to allow Trend Vision One to provide security for your cloud assets.

Adding an OCI compartment to the Cloud Accounts app allows Trend Vision One to access your cloud service to provide security and visibility into your cloud assets. Before you begin, review the [permission requirements](../../get-started-with-cloud-accounts/cloud-accounts-required-permissions/oracle-required-granted-permissions) and [region limitations](../oracle-supported-regions) for connecting an OCI compartment to Cloud Accounts.

::::note
:::warning[Important]
:::

The following steps provide instructions for Oracle Resource Manager deployment, which is recommended for single-region deployments that do not have Agentless Vulnerability & Threat Detection enabled. If you want to enable Agentless Vulnerability & Threat Detection, or you want to deploy to multiple regions, use LocalShell deployment instead. For more information, see [Connect an OCI compartment using LocalShell](./connect-oci-localshell).
::::

### Procedure {#procedure}

1.  Sign in to the Trend Vision One console.

2.  In a new tab in the same browser session, log in to the Oracle Cloud Console.

3.  In the Trend Vision One console, go to **Cloud Security → Cloud Accounts → Oracle**.

4.  In the **Cloud Accounts** screen, click **Add Compartment**.

    The **Add Oracle Compartment** screen opens.

5.  Specify the general information for the compartment.

    1.  Specify the **Tenancy OCID** (Oracle Cloud Identifier) for your tenancy in OCI.

    2.  Specify the **Compartment OCID** for the compartment you want to connect.

        You can find the OCID in the Oracle Console in **Compartment Details**.

    3.  Specify the **Identity Domain OCID**, which is the identity domain where the Identity Access Management (IAM) resources created by the Terraform template will be deployed.

    4.  Specify a **Name** for the account, which is how the account will be identified in the Cloud Accounts list.

    5.  Optionally, provide a **Description** of the OCI compartment.

    6.  Select your OCI home region from the list.

        Your home region is the region that contains your account information and identity resources. To find your home region, in the OCI console go to **Profile** in the navigation menu and select Tenancy:\[tenancy_name\].

    7.  Click **Next**.

6.  Configure the **Features and Permissions** you want to grant access to your cloud environment.

    - **Core Features and Cyber Risk Exposure Management**: Connect your OCI compartment to Trend Vision One to discover your cloud assets and rapidly identify risks such as compliance and security best practice violations on your cloud infrastructure.

    - **Cyber Risk Exposure Management - Cloud account assessment**: Discover and assess your cloud assets in Attack Surface Discovery, Threat and Exposure Management, and Cloud Security Posture.

      :::note
      This feature requires credits, which are calculated based on asset count after onboarding the Oracle compartment.
      :::

    - **Agentless Vulnerability & Threat Detection**: This feature set is not available for Oracle Resource Manager (ORM) deployments. To deploy Agentless Vulnerability & Threat Detection, you must select LocalShell deployment. For more information, see [Connect an OCI compartment using LocalShell](./connect-oci-localshell).

    For more information about each feature and permission set, see [Oracle Cloud Infrastructure (OCI) features and permissions](../oracle-features-permissions).

7.  Click **Next**.

8.  Click **Download the Terraform Template** to save the template to your local machine.

9.  Create a stack in the Oracle Cloud Console and upload the Terraform template.

    1.  In the Oracle Cloud Console, open the navigation menu and select **Developer Services**. In the **Resource Manager** area click **Stacks**.

    2.  In the **List Scope** area, select the compartment you want to connect to Trend Vision One.

    3.  Click **Create stack**.

        The **Create stack** page opens.

    4.  Select **My configuration**.

    5.  In the **Stack configuration** area, select **.Zip file** and upload the template you downloaded from Trend Vision One.

    6.  Click **Next**.

    7.  Review the **Configure variables** page and click **Next**.

    8.  Select the **Run apply** checkbox and click **Create**.

    The connection process might take a few moments to complete. You can refresh the Cloud Accounts screen to check the status of your added compartment.
