---
slug: trend-vision-one-install-contain-scanner2
sidebar_position: 2
title: Install the Containerized Scanner
---

### Procedure {#procedure}

1.  Create secrets with the registration token (replace your-v1-registration-token using your v1-registration token):

    ``` codeblock
    kubectl create namespace visionone-filesecurity
    kubectl create secret generic token-secret --from-literal=registration-token="_your-v1-registration-token_" -n visionone-filesecurity
    kubectl create secret generic device-token-secret -n visionone-filesecurity
    ```

2.  Get secrets using following command: (should include two secrets `token-secret` and `device-token-secret`)

    ``` codeblock
    kubectl get secret -n visionone-filesecurity
    ```

3.  Download the Helm chart containing the scanner from the GitHub repository:

    ``` codeblock
    helm repo add visionone-filesecurity https://trendmicro.github.io/visionone-file-security-helm/
    helm repo update
    ```

4.  If you wish you can verify that the helm chart has been signed and is valid:

    Download the public key file and import

    ``` codeblock
    curl -o public-key.asc https://trendmicro.github.io/visionone-file-security-helm/public-key.asc
    gpg --import public-key.asc
    ```

    :::danger[Warning]
    The GnuPG v2 stores your secret keyring using a new format kbx on the default location ~/.gnupg/pubring.kbx. Please use the following command to convert your keyring to the legacy gpg format (Reference: [Helm Provenance and Integrity](https://helm.sh/docs/topics/provenance/))
    :::

    Verify that the chart has been signed and is valid

    ``` codeblock
    helm pull --verify visionone-filesecurity/visionone-filesecurity
    ```

5.  Install the Helm Chart:

    Install the chart with the release name `my-release`

    ``` codeblock
    helm install my-release visionone-filesecurity/visionone-filesecurity -n visionone-filesecurity
    ```

6.  Verify that the scanner is working using the CLI.

    :::note
    If you installed an SDK instead of the CLI, you can also verify if the scanner is running using the installed SDK. For more information see [File Security SDK](https://docs.trendmicro.com/en-us/documentation/article/trend-vision-one-sdk-or-cli-scanning)
    :::

    1.  Port the service to your local machine:

        ``` codeblock
        # Forward the ICAP port to your local machine
        kubectl port-forward -n visionone-filesecurity svc/my-releasevisionone-filesecurity-scanner 1344:1344./tmfs scan file:./eicar.com.txt --tls=false --endpoint=my-release-visionone-filesecurity-scanner:50051
        ```

    2.  In a separate terminal, install the ICAP client and test the connection:

        ``` codeblock
        # Install c-icap-client (if not already installed)
        sudo apt-get install c-icap
        # Test file scanning
        c-icap-client -i localhost -p 1344 -s scan -v -f sample.txt -x "Xscan-file-name: sample.txt"
        ```

7.  Expose the ICAP Scanner Service using a Kubernetes loadBalance service.

    For detailed, step-by-step instructions, refer to the appropriate guide for your

    deployment:

    - [Expose ICAP Service with MetalLB](./load-balancing-for-containerized-icap-scanners/expose-icap-service-metallb)
    - [Expose the ICAP service with AWS NLB](./load-balancing-for-containerized-icap-scanners/expose-icap-service-aws-nlb)
