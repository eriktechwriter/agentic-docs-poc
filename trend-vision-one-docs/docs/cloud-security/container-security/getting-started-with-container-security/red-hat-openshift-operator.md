---
slug: trend-vision-one-red-hat-openshift-operator
sidebar_position: 3
title: Deploy Container Security operator for Red Hat OpenShift
---

The Container Security Operator is a method of deploying and managing the Trend Vision One Container Security application, similar to Helm chart. Learn more about [Helm Chart](../inventoryoverview/kubernetes-clusters/supported-helm-versions).

The operator runs on the OpenShift container platform to deploy and manage the Container Security application. The operator automatically installs Helm chart and checks for new updates as they are released. Use the following steps to install the operator from the OpenShift Operator hub.

### Register your cluster with Container Security {#register-your-cluster-with-container-security}

**Automatically register**

You can configure clusters to be automatically registered when Container Security is installed.

Use the following steps to automatically register multiple clusters for Container Security with a Trend Vision One API key.

1.  From the Trend Vision One console, navigate to **Cloud Security → Container Security**.

2.  Create a Trend Vision One API key with a role that contains only the "Automatically register cluster" permission.

    See [Obtain an API key for automated cluster registration](../inventoryoverview/kubernetes-clusters/obtain-apikey-auto-cluster-reg) for more information.

3.  Store the Trend Vision One API Key as a secret called `trendmicro-container-security-registration-key` with the key `registration.key` in the `trendmicro-system` namespace.

**Manually register**

Create a cluster in the Trend Vision One console using a bootstrap token.

1.  From the Trend Vision One console, navigate to **Cloud Security → Container Security**.

2.  Click **+ Add Cluster** under the Kubernetes section.

3.  Give the Red Hat OpenShift cluster a unique name.

4.  Copy the bootstrap token.

    :::note
    The bootstrap token is used during the installation process.
    :::

### Install the operator {#install-the-operator}

1.  Open the OpenShift cluster Web Administrative Console by going to https://console-openshift-console.apps.\<cluster-name\>.\<base-domain\>

    :::note
    Use the command below to get the exact Web Console URL using the OpenShift CLI:
    ``` codeblock
    oc whoami --show-console
    ```
    :::

2.  On left hand panel of the OpenShift Admin Console, select **Operators**, and then navigate to open the OperatorHub.

3.  From the OperatorHub page, in the search box at the top, search for `VisionOne`. Click on **Trend Vision One<sup>TM</sup> Container Security** to open the Operator information dialog.

4.  Click **Install**.

    :::note
    - By default, the Operator selects the `stable` channel with the latest version to be installed. You can change the channel to `alpha` to install a preview release.
    - The Container Security Operator requires the `trendmicro-system namespace` to be created for installation. Use the default, recommended `trendmicro-system` namespace.
    - Choose `Automatic` for automatic upgrades or `Manual` for manual upgrades that require manual update approval.
    :::

5.  After installing the operator, go to **View Operator** to view the operator status.

6.  Navigate to `VisionOneContainerSecurity` from the top menu, and click `Create VisionOneContainerSecurity` to open the create operand form.

7.  In the create `VisionOneContainerSecurity` Operand form, click on `VisionOne` to expand the list that shows the configuration required to connect with Trend Vision One.

    Define the following in the `VisionOne` section:

    - For Auto Registration, set the following values:

      :::note
      Make sure you have stored the Trend Vision One API Key as a secret in the cluster, as described in Automatically register.
      :::

      - **`clusterRegistrationKey`**: Set the value as `true`.

      - **`clusterName`**: Name of the cluster for `VisionOne`. If not specified, the name will be a random string.

      - **`clusterNamePrefix`**: Optional prefix for the cluster name.

      - **`policyId`**: Existing Policy Id in `VisionOne` that will be assigned to the new cluster.

      - **`groupId`**: Existing Group Id in `VisionOne` that will be assigned to the new cluster.

      :::note
      See the [automated cluster register README](https://github.com/trendmicro/visionone-container-security-helm?tab=readme-ov-file) for more information.
      :::

    - For Manual registration:

      :::note
      Make sure to set the `bootstrapToken` value in your `overrides.yaml` file, as described in Manually register.
      :::

      - **`clusterRegistrationKey`**: Set the value as `false`.

      - **`bootstrapToken`**: Enter the required token.

        :::note
        The `bootstrapToken` expires after 1 day. This value is not required for auto-registration.
        :::

    - For manual registration, set the following values to the same values in your `overrides.yaml` file. For Auto registration, set the values based on the new cluster requirements. Leave blank if the value is not present:

      - **`exclusion`**: List of namespaces to be excluded from scans. Events are not be generated for these namespaces.

      - **`endpoint`**: The Trend Vision One API Endpoint.

        The default endpoint (https://api.xdr.trendmicro.com/external/v2/direct/vcs/external/vcs) works for most regions. For Middle East and Africa (MEA) update the endpoint to https://api.mea.xdr.trendmicro.com/external/v2/direct/vcs/external/vcs.

      - **`inventoryCollection`**: Enables inventory scanning feature.

      - **`malwareScanning`**: Enables malware scanning feature.

      - **`runtimeSecurity`**: Enables Runtime Security feature.

      - **`secretScanning`**: Enables secret scanning feature.

      - **`vulnerabilityScanning`**: Enables vulnerability scanning feature.

      - **`policyOperator`**: Set the policy name created after cluster registration. Refer to the [sample ClusterPolicy YAML in GitHub](https://github.com/trendmicro/visionone-container-security-helm/blob/main/sample/clusterpolicy.yaml) to create a new cluster policy using the specified policy name.

8.  Click **Create** to create the operand instance, which installs Container Security Helm chart.

9.  From the Trend Vision One, you can now check the protection status of your Read Hat OpenShift cluster nodes under **Inventory/Overview → Self-managed**.
