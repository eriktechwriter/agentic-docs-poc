---
slug: trend-vision-one-manage-subscriptions-2
title: Manage subscriptions
---

:::note
This documentation is relevant only to Cloud Risk Management standalone customers.
:::

*User Access*

<table>
<thead>
<tr>
<th><p>User Role</p></th>
<th><p>Can Access</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Administrator</a></p></td>
<td><img src="./images/check=599d21a3-4a92-48a6-96f0-2390bf1d0db2.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Power User</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Custom - Full Access</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Read Only</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Custom - Read Only</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
</tbody>
</table>

*Content*

- AWS
- Azure
- Google Cloud
- View Account Size
- FAQs

Cloud Risk Management offers a multi-cloud subscription-based service to our customers.

### AWS {#aws}

- Select the *AWS Accounts* tab
- Click on the *Cancel* button to remove an AWS account.
- Click on the *Add an account* button to add an AWS account to Cloud Risk Management.

### Azure {#azure}

1.  Select the *Azure Subscriptions* tab
2.  Click on the *Cancel* button to remove an Azure account.
3.  Click on the *Add a Subscription...* button to add an Azure account to Cloud Risk Management.

### Google Cloud {#google-cloud}

1.  Select the *GCP Projects tab*.
2.  Click on the *Delete* button to remove a GCP account.
3.  Click on the *Add a GCP Project* button to add a GCP account to Cloud Risk Management.

### View Account Size {#view-account-size}

### Enable Users to Search and View Accounts by Account ID {#enable-users-to-search-and-view-accounts-by-account-id}

1.  From the *Subscription* page, toggle the On/Off button next to *View and Search Cloud Account IDs in account menu is enabled* to allow your Organization's users to be able to search a Cloud Account by its ID in the Account menu on the Dashboard.
2.  Once you've enabled this option, your users will be able to enter an Account ID in the Search Box in the Accounts menu and search for an account.

### Account Usage and Billing {#account-usage-and-billing}

Trend Vision One – Cloud Risk Management Pay-As-You-Go billing allows customers to use Cloud Risk Management on a consumption basis, growing their usage alongside the growth of their cloud environment.

Pay-As-You-go is beneficial to customers:

- who want to pay on a month-to-month basis through the AWS Marketplace
- are likely to grow their cloud environment throughout the contract period and want to pay for usage on a pro-rata basis
- are not able to predict their spending for an entire contract period
- who want the flexibility to use any Trend Vision One service and change their usage of each service throughout the contract period

Cloud Risk Management Pay-As-You-Go billing uses per account pricing, based on the size of the account. It is determined by the number of resources scanned within an account per hour.

<table>
<tbody>
<tr>
<td><p><em>Billing Dimensions</em></p></td>
<td><p><em>Examples</em></p></td>
<td><p><em>Cost (in USD</em> )</p></td>
</tr>
<tr>
<td><p>Small sized cloud account – typically dev or test</p></td>
<td><p>AWS and Azure: Accounts with less than 1,000 resources</p></td>
<td><p>$0.07/account</p></td>
</tr>
<tr>
<td><p>Medium sized cloud account – typically staging or production</p></td>
<td><p>AWS and Azure: Accounts with 1,000 – 5,000 resources</p></td>
<td><p>$0.29/account</p></td>
</tr>
<tr>
<td><p>Large sized cloud account – typically large production accounts</p></td>
<td><p>AWS and Azure: Accounts with 5,000+ protected resources</p></td>
<td><p>$0.35/account</p></td>
</tr>
</tbody>
</table>

### FAQs {#faqs}

*Q: How can I see what size my accounts are?* A:

1.  Add your account to [Trend Vision One - Cloud Risk Management](http://cloudone.trendmicro.com/signup.screen?)
2.  Go to *Administration*.
3.  Click on *Subscriptions* to view all your accounts with their sizes.

*Q: How does the system know the number of resources in my accounts?*

A: Each time the Compliance scan scans an account, it runs its rules engine against the resources within the account for misconfigurations. This process produces an updated resource count which determines the account size.

*Q: How frequently is my usage metered?*

A: Every hour (24/7) a usage service reports on the number of protected accounts a customer has, including which size tier the account is based on the resource count of the last Compliance scan scan.

*Q: What’s the definition of a resource?*

Any infrastructure component that is used to host, process or store your data or applications is called a Resource. Cloud Risk Management scans resources when checking for misconfigurations in cloud services. We count all individual resources as a part of consumption pricing.

Below are some examples of resources;

- ebs-snapshot
- sqs-queue
- ec2-accountattribute
- ec2-instance
- ec2-networkinterface
- iam-credentialreport
- iam-policy
- s3-bucket
- autoscaling-launchconfiguration
- dynamodb-table

*Q: Do all resources contribute to the sizing dimension?*

A: The resource count excludes resources ingested from native security services such as AWS Trusted Advisor and Guard Duty so that customers are only billed for resources that Cloud Risk Management protects. Cloud Risk Management also excludes resources from services with only a small number of best practice rules.
