---
slug: trend-vision-one-custom-destination-buckets
sidebar_position: 8
title: Customize quarantine, promote, and failure buckets
---

File Security Storage supports three types of destination buckets:`QuarantineBucket`, `CleanBucket`, and `FailureBucket`. When configuring your account’s CloudFormation template, you can define regional or global destination buckets, and optionally specify a custom destination configuration for individual buckets.

If a custom destination bucket is defined, it takes priority over regional or global buckets. Buckets without a custom destination will send files to the regional or global destination bucket, depending on your configuration.

Use the following script, in the `FileSecurityStorageQuarantineBucket`, `FileSecurityStorageCleanBucket`, or `FileSecurityStorageFailureBucket`:

``` codeblock
{
  "custom": {
      "<to-scan-src-bucket-1>": {
          "destRegion": "us-east-1",
          "destBucket": "<destination-bucket-1-name>"
      },
  },
  "us-east-1": "<regional-bucket-name>",
  "global": "<global-bucket-name>"
}
```

In the above example, note that in the `"custom"` key as the field, even though the `<to-scan-src-bucket-1>` is located at us-east-1, it sends files to `"<destination-bucket-1-name>"` instead of the regional bucket `"<regional-bucket-name>"`. Buckets which are not specified move their files to their regional or global bucket settings.
