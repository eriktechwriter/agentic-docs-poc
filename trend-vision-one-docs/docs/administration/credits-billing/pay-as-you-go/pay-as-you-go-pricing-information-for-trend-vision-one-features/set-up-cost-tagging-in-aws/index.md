---
slug: trend-vision-one-aws-cost-usage-tagging-payg
sidebar_position: 1
title: Set up cost tagging in AWS
---

Use AWS cost tagging to view a detailed breakdown of Trend Vision One pay-as-you-go billing in the AWS Billing and Cost Management console.

### Procedure {#procedure}

1.  Activate cost tagging in the AWS Billing and Cost Management console.

    For more information, see [AWS Billing documentation](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.md).

    1.  Sign in to the AWS Billing and Cost Management console.

    2.  Click **Cost allocation tags**.

    3.  Choose **AWS-generated cost allocation tags**.

    4.  Search for `aws:marketplace:isv:` to find the tags corresponding to the Trend Vision One solutions and features that support AWS cost tagging.

    5.  Select the following tags:

        - `aws:marketplace:isv:cloudAccountID`

        - `aws:marketplace:isv:customTag`

    6.  Click **Activate**.

    :::note
    AWS cost tagging might take up to 24 hours to activate.
    :::

2.  Go to **Billing and Cost Management → Cost Explorer**.

3.  For **Date Range**, choose a start and end date for the billing period and click **Apply**.

4.  In the **Filters** section, choose a Trend Vision One solution or feature to view a cost breakdown for.

    1.  For **Service**, search for and select Trend Vision One.

    2.  Click **Apply**.

    3.  For **Usage type**, search for and select the billing dimension of a specific offering.

        :::tip
        To see the AWS usage type for each supported Trend Vision One pay-as-you-go offering, see [AWS usage type and cost allocation tags for Trend Vision One solutions](./aws-usage-type-cost-tag-ref).
        :::

5.  For **Dimension** in the **Group by** section, choose **Tag**.

6.  Under **Tag**, search for and select the tag for a specific offering.

    :::tip
    To see the AWS-generated cost allocation tag for each supported Trend Vision One pay-as-you-go offering, see [AWS usage type and cost allocation tags for Trend Vision One solutions](./aws-usage-type-cost-tag-ref).
    :::

    A bar chart displays with cost tagging information, specifying the proportion of the total cost contributed by each unit.

    For example, the Cyber Risk Exposure Management chart shows the overall cost for the solution, itemized by cloud account.

**Related information**

- [AWS usage type and cost allocation tags for Trend Vision One solutions](./aws-usage-type-cost-tag-ref "View the billing dimension and AWS-generated cost allocation tag for each supported Trend Vision One pay-as-you-go offering.")
