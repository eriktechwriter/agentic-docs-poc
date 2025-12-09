---
slug: trend-vision-one-connecting-updating-oci
sidebar_position: 1
title: Connect Oracle Cloud Infrastructure (OCI) compartments
---

Add your Oracle Cloud Infrastructure (OCI) compartments to provide visibility into your cloud environment.

Before you begin, ensure you have access to a sign-in or user role with administrator privileges for the compartment you wish to connect, and that you are logged into the compartment on a separate tab in the same browser instance as the Trend Vision One console. Review the [required permissions](../../get-started-with-cloud-accounts/cloud-accounts-required-permissions/oracle-required-granted-permissions) and [regional limitations](../oracle-supported-regions) to ensure your cloud environment can support deploying Trend Vision One security resources.

Trend Vision One offers two methods available for deploying resources to Oracle Cloud Infrastructure (OCI) compartments:

- **Oracle Resource Manager (ORM) deployment:** This method is recommended for single-region environments and scenarios not using Agentless Vulnerability & Threat Protection. This method provides a streamlined deployment experience using Oracle's native infrastructure-as-code service. For more information, see [Connect an OCI compartment using Oracle Resource Manager (ORM)](./adding-oracle-cloud-compartment).

- **LocalShell deployment:** This method is recommended for multi-region or complex deployments, and required when deploying Agentless Vulnerability & Threat Detection. This method offers greater flexibility and control for advanced configurations. For more information, see [Connect an OCI compartment using LocalShell](./connect-oci-localshell).

**Related information**

- [Connect an OCI compartment using Oracle Resource Manager (ORM)](./adding-oracle-cloud-compartment "Add and connect an Oracle compartment using Oracle Resource Manager (ORM) to the Cloud Accounts app to allow Trend Vision One to provide security for your cloud assets.")
- [Connect an OCI compartment using LocalShell](./connect-oci-localshell "Add and connect an Oracle compartment using LocalShell to Cloud Accounts to allow Trend Vision One to provide security for your cloud assets.")
