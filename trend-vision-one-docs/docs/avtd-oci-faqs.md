---
slug: trend-vision-one-avtd-oci-faqs
title: Oracle Cloud Infrastructure (OCI) troubleshooting and frequently asked questions
---

**Related information**

- How do I address OCI KMS key creation errors during Agentless Vulnerability & Threat Detection Terraform deployment for OCI?
- How do I address "operation not permitted" errors on macOS during Agentless Vulnerability & Threat Detection Terraform deployment for OCI?
- How do I address EOF errors related to log group removal when removing the Agentless Vulnerability & Threat Detection Terraform stack in OCI?

## How do I address OCI KMS key creation errors during Agentless Vulnerability & Threat Detection Terraform deployment for OCI? {#how-do-i-address-oci-kms-key-creation-errors-during-agentless-vulnerability-threat-detection-terraform-deployment-for-oci}

When deploying Agentless Vulnerability & Threat Detection to your OCI compartment using the Terraform script, you may receive a KMS key creation error as shown below.

``` codeblock
Error: Post "[URL]": dial tcp: lookup [URL] on [IPAddress]:53: no such host
  with module.cloud-sentry.module.primary-region.module.primary-common.module.secrets-management.oci_kms_key.common_key[0],
  on .terraform/modules/cloud-sentry/feature-modules/common/primary-region/secrets-management/secrets.tf line 14, in resource "oci_kms_key" "common_key"
```

The key creation error is an intermittent network issue with OCI. To address the issue, rerun the command `terraform apply` to deploy the Terraform template again.

## How do I address "operation not permitted" errors on macOS during Agentless Vulnerability & Threat Detection Terraform deployment for OCI? {#how-do-i-address-operation-not-permitted-errors-on-macos-during-agentless-vulnerability-threat-detection-terraform-deployment-for-oci}

When executing the `get_topic_ocid.sh` shell script on macOS during Agentless Vulnerability & Threat Detection Terraform template deployment to OCI, you may receive an error message that looks similar to the following:

``` codeblock
│ Error: External Program Execution Failed
│ 
│   with module.cloud-sentry.module.ca-toronto-1[0].module.common[0].module.telemetry.module.telemetry_topic.data.external.topic_ocid,
│   on .terraform/modules/cloud-sentry/templates/topic/topic.tf line 88, in data "external" "topic_ocid":
│   88:   program    = ["${path.module}/get_topic_ocid.sh"]
│ 
│ The data source received an unexpected error while attempting to execute the
│ program.
│ 
│ The program was executed, however it returned no additional error messaging.
│ 
│ Program: .terraform/modules/cloud-sentry/templates/topic/get_topic_ocid.sh
│ State: fork/exec
│ .terraform/modules/cloud-sentry/templates/topic/get_topic_ocid.sh: operation
│ not permitted
```

If you receive the error, macOS Gatekeeper has blocked the script. To fix the error, perform the following steps to remove the `com.apple.quarantine` attribute added to the script by macOS Gatekeeper.

1.  Open Terminal.

2.  Use the following command to navigate to the script directory:

    - ``` codeblock
      cd /path/Vision-One-Cloud-Account-Management/.terraform/modules/cloud-sentry/templates/topic/
      ```

3.  Use the following command to remove the quarantine attribute:

    - ``` codeblock
      xattr -d com.apple.quarantine get_topic_ocid.sh
      ```

## How do I address EOF errors related to log group removal when removing the Agentless Vulnerability & Threat Detection Terraform stack in OCI? {#how-do-i-address-eof-errors-related-to-log-group-removal-when-removing-the-agentless-vulnerability-threat-detection-terraform-stack-in-oci}

If you are removing the Terraform stack for Agentless Vulnerability & Threat Detection from your OCI compartment using the `terraform destroy` command, you may receive an error similar to the following error related to log group removal:

``` codeblock
Error: Delete "https://logging.ap-singapore-1.oci.oraclecloud.com/20200531/logGroups/ocid1.loggroup.oc1.ap-singapore-1.amaaaaaags553pqaq4hd262mmevb24cmbcttm6mfogldj6lvdjsmkkm3idla/logs/ocid1.log.oc1.ap-singapore-1.amaaaaaags553pqaj7wjzerzf5rvnad66gezhvanmoflayldqq5wcdxooq3a": EOF
```

The error is an intermittent network issue with OCI. Rerun the `terraform destroy` command to retry removing the Terraform stack.
