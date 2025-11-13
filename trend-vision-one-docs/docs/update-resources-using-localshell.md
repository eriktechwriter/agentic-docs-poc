---
slug: trend-vision-one-update-resources-using-localshell
title: Update resources using LocalShell
---

Update deployed resources in your Oracle Cloud Infrastructure (OCI) compartment to the latest version using LocalShell.

The Resource Update tab in the Compartment Settings screen allows you to update the Trend Vision One resources deployed to your compartment. This may be required as support for new features or functions are added to Cloud Accounts. Make sure you have the [required permissions](oracle-required-granted-permissions.md) to update the compartment.

:::note
The following instructions apply to resources deployed using LocalShell, or to compartments in which are you enabling Agentless Vulnerability & Threat Detection following an initial deployment with Oracle Resource Manager. To update resources deployed with Oracle Resource Manager, see [Update resources using Oracle Resource Manager](oracle-cloud-resource-update.md).
:::

### Procedure {#procedure}

1.  Sign in to the Trend Vision One console.

2.  In a new tab in the same browser session, log in to the Oracle Cloud Console.

3.  In the Trend Vision One console, go to **Cloud Security → Cloud Accounts → Oracle**.

4.  Click the name of the compartment you want to update.

5.  In the Compartment Settings screen, navigate to the **Resource Update** tab.

6.  Click **Download the Terraform template** to download the template to your local machine.

7.  Unzip the Terraform template package.

    The next step depends on your current deployment method:

    - If you have just enabled Agentless Vulnerability and Threat Detection on a compartment that was previously deployed using Oracle Resource Manager, continue with the next step.

    - If you are updating resources on a compartment that was previously deployed using LocalShell, skip to step 10.

8.  Access the deployment folder by copying the command from Trend Vision One and pasting it in the terminal.

9.  Prepare the Terraform state file:

    - Download the Terraform state file from Oracle Resource Manager. For detailed instructions, see [Getting a Stack's State File](https://docs.oracle.com/en-us/iaas/Content/ResourceManager/Tasks/get-stack-tf-state.htm) in the Oracle Cloud Infrastructure documentation.

    - Rename the Terraform state file from `[stack-ocid].json` to `terraform.tfstate`.

    - Place the Terraform state file in the deployment folder.

    - Verify that the `terraform.tfstate` file is in the `Vision-One-Cloud-Account` directory by copying and running the command from Trend Vision One.

10. Run the deployment script by copying the commands and pasting them in the terminal.

    LocalShell begins the Terraform process to update Trend Vision One security resources.

11. In the Trend Vision One console, in the Compartment Settings screen, click **Save changes.**.

    The update process might take a few moments to complete. You can refresh the Cloud Accounts screen to check the status of your updated compartment.
