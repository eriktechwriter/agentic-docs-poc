---
slug: trend-vision-one-file-security-storage-for-aws
sidebar_position: 1
title: File Security Storage for AWS
---

File Security Storage provides easy deployment using AWS CloudFormation to integrate automated scanning of files as you upload them into your storage and effortlessly detect all types of malware including viruses, trojans, spyware, and more.

You deploy File Security Storage using the AWS CloudFormation template. After deploying the File Security Storage scanner stack to the selected region and turning on EventBridge for selected buckets in that region, the scanner stack scans all incoming files. The Scanner stack is located in each region, with one server in each region and bucket. When event notification turned on, the scanner Lambda scans any incoming file in the scanner stack. In the CloudFormation template, you can set parameters to send malicious files to a quarantine bucket and clean files to a promote bucket.

After deploying the File Security Storage scanner stack to the selected region and turning on EventBridge for selected buckets in that region, the scanner stack scans all incoming files. The Scanner stack is located in each region, with one server in each region and bucket. With event notification turned on, scanner Lambda scans any incoming file in the scanner stack. The scanner Lambda then sends malicious files to quarantine.

The following architecture diagram illustrates the main File Security Storage information flow.

![](/images/fs-storage-architecture=c9458395-9a5d-4d67-bf57-b6f09d3e0f57.webp)

**Related information**

- [Scaling and performance with AWS](./scaling-performance-aws)
- [Deploy File Security Storage to a new AWS account](./deploy-fss-new-account)
- [Deploy File Security Storage to an existing AWS account](./deploy-fss-existing-aws)
- [Deploy File Security Storage to an AWS Organization account](./deploy-fss-aws-org-account)
- [Add by-region quarantine and promote buckets in single accounts](./adding-region-buckets)
- [Add a failed scan bucket](./adding-failed-scans-bucket)
- [Customize quarantine, promote, and failure buckets](./custom-destination-buckets)
- [Turn on scanning in AWS buckets](./turning-scanner-for-aws "Start scanning Amazon Web Services (AWS) buckets with File Security Storage")
- [Manual Scans for AWS buckets](./manual-scans-for-aws-buckets)
- [Scheduled scans for AWS buckets](./scheduled-scans-for-aws-buckets)
- [Turn off scanning in AWS buckets](./turning-off-scanner-for-aws "Stop File Security Storage from scanning Amazon Web Services (AWS) buckets")
- [Scans and tags in AWS](./scans-and-tags-in-aws/scans-tags-aws)
- [Take action after AWS scans](./taking-action-after-aws-scans "Actions to perform after scanning files with Trend Vision One File Security SDK")
