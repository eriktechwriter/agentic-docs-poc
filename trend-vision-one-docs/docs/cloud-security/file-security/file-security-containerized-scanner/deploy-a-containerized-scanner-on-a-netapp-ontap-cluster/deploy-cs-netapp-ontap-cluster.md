---
slug: trend-vision-one-deploy-cs-netapp-ontap-cluster
sidebar_position: 1
title: Deploy a Containerized Scanner on a NetApp ONTAP cluster
---

:::note
This is a private pre-release feature and is not considered an official release. If you are interested in trialing this feature, please contact your sales representative. Please review the [Pre-release disclaimer](../../../../privacy-and-personal-data-collection-disclosure/pre-release-disclaimer) before using the feature.
:::

Trend Vision One File Security Containerized Scanner can be used in conjunction with NetApp's ONTAP to scan files that use RPC-based protocols.

**Related information**

- [CLISH CLI command reference](./clish-cli-command-reference)
- [Agent management commands](./agent-management-commands)
- [Scanner management commands](./scanner-management-commands)
- [Technical implementation notes](./technical-implementation-notes)
- [Troubleshooting](./fs-cs-clish-troubleshooting)
- [Clish CLI command quick reference](./clish-cli-command-quick-reference)

## Prerequisites {#prerequisites}

You require the following:

- **NetApp ONTAP cluster:** Functioning ONTAP cluster with SVMs configured.

- **Windows server:** Windows server to act as the Vscan server.

- **Containerized Scanner:** Kubernetes cluster with the scanner service. Ensure that the RPC agent management is enabled with the appropriate feature flag

- **Network connectivity:** Network connectivity between all components

## NetApp ONTAP Configuration {#netapp-ontap-configuration}

### Procedure {#procedure}

1.  Enable Vscan on the ONTAP Management console:

    1.  Create the scanner pool by using the following script:

        ``` codeblock
        vserver vscan scanner-pool create -vserver <svm_name> -scanner-pool <pool_name> -hostnames <vscan_server_hostname> -privileged-users <domain\user>
        ```

        For more information, see [vserver vscan scanner-pool create](https://docs.netapp.com/us-en/ontap-cli/vserver-vscan-scanner-pool-create.md).

    2.  Apply the policy to the scanner pool:

        ``` codeblock
        vserver vscan scanner-pool apply-policy -vserver <svm_name> -scanner-pool <pool_name> -scanner-policy primary
        ```

        For more information, see [vserver vscan scanner-pool apply-policy](https://docs.netapp.com/us-en/ontap-cli/vserver-vscan-scanner-pool-apply-policy.md).

    3.  Enable Vscan on the SVM:

        ``` codeblock
        vserver vscan enable -vserver <svm_name>
        ```

2.  Install the NetApp ONTAP AV-Connector

    1.  Download the NetApp ONTAP AV-Connector from NetApp's website.

    2.  Install the connector on your Windows Vscan server.

    3.  Configure the connector with:

        - ONTAP Management LIF or Data LIF (SVMs) IP address
        - Appropriate credentials for ONTAP access

## File Security Containerized Scanner integration {#file-security-containerized-scanner-integration}

### Procedure {#procedure-1}

1.  Generate onboarding token for the RPC agent in the Management Service:

    1.  Access the Management Service within your Containerized Scanner Kubernetes cluster.

        ``` codeblock
        kubectl exec -it <management service pod> -n <namespace> -- bash
        ```

    2.  Create an agent slot for the RPC agent:

        ``` codeblock
        clish agent create --name <agent-name>
        ```

    3.  Generate an Onboarding Token for RPC Agent Authentication.

        ``` codeblock
        clish agent onboarding-token issue --instance <agent-name>
        ```

2.  Install the RPC agent:

    1.  Download the RPC agent installer(msi).

    2.  Install on the Windows Vscan server.

    3.  Configure the RPC agent with:

        - Given Onboarding Token

        - Scanner Service endpoint

        - Management Service endpoint

3.  Configure the RPC agent with the Management Service:

    1.  Access the Management Service within your Containerized Scanner Kubernetes cluster.

    2.  Check the agent connection status:

        ``` codeblock
        clish agent show --instance <agent-name>
        ```

    3.  Configure privilege user credential (username/password) for the RPC agent.

        ``` codeblock
        clish agent credential modify --instance <agent-name>
        ```

4.  Verify your deployment:

    1.  Check the Vscan status on the ONTAP Management console:

        `vserver vscan connection-status show-all`

    2.  Check RPC agent connection in Management Service.

    3.  Test file scanning by creating test files with EICAR signatures to verify detection.
