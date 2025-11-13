---
slug: trend-vision-one-resources-deployed-cloud-accounts
title: Resources deployed by Cloud Accounts
---

Review the services deployed to your cloud environment when connecting to Cloud Accounts.

When connecting your cloud resources to Cloud Accounts, certain features and services are deployed to your environment to facilitate the connection and enable detection and response capabilities. The following tables list the services deployed within your environment.

**Related information**

- Resources deployed in AWS enviroments
- Resources deployed in Azure enviroments
- Resources deployed in Google Cloud environments
- Resources deployed in Alibaba Cloud environments
- Resources deployed in Oracle Cloud environments

## Resources deployed in AWS enviroments {#resources-deployed-in-aws-enviroments}

The deployment template includes tagging when connecting your AWS account, allowing you to identify which services are associated with Trend Vision One security applications and resources. You can also add custom tags when connecting an account using the CloudFormation template. For more information, see [Connect an AWS account using CloudFormation](adding-aws-account.md).

<table style="width:99%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr>
<th><p>Feature name</p></th>
<th><p>AWS tag</p></th>
<th><p>Services deployed (number)</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core features and Cyber Risk Exposure Management</p></td>
<td><p><code>"TrendMicroProduct": "cam"</code></p></td>
<td><ul>
<li><p>Cloudformation Stack (1)</p></li>
<li><p>Cloudformation Stack Nested (0~3)</p></li>
<li><p>IAM Managed Policy (3~4)</p></li>
<li><p>IAM OIDC Provider (1)</p></li>
<li><p>IAM Policy (2~4)</p></li>
<li><p>IAM role (3~5)</p></li>
<li><p>Lambda (2~4)</p></li>
<li><p>LogGroup (2~3)</p></li>
<li><p>Custom (4)</p></li>
<li><p>SSM (1)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Detection for AWS CloudTrail</p></td>
<td><p><code>"TrendMicroProduct": "ct"</code></p></td>
<td><p>Single Account:</p>
<ul>
<li><p>Lambda (10-12)</p></li>
<li><p>EventBridge (1)</p></li>
<li><p>IAM (7)</p></li>
<li><p>SQS (1)</p></li>
</ul>
<p>Control Tower:</p>
<ul>
<li><p>Lambda (10-12)</p></li>
<li><p>EventBridge (1)</p></li>
<li><p>IAM (7)</p></li>
<li><p>SQS (1)</p></li>
<li><p>EventBridge (1) (User provided)</p></li>
<li><p>SNS (1) (User provided)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Response for AWS</p></td>
<td><p>n/a</p></td>
<td><ul>
<li><p>Only uses IAM permissions</p></li>
<li><p>Creates one IAM Policy to revoke an IAM user's permissions.</p></li>
</ul></td>
</tr>
<tr>
<td><p>Container Protection for AWS ECS</p></td>
<td><p><code>"TrendMicroProduct": "cs"</code></p></td>
<td><ul>
<li><p>Cloudformation Stackset (1)</p></li>
<li><p>IAM Roles (8)</p></li>
<li><p>Lambda (4)</p></li>
<li><p>Log group (5)</p></li>
<li><p>Custom resources (4)</p></li>
<li><p>SQS (1)</p></li>
<li><p>ECS task def (1)</p></li>
<li><p>SSM parameters (1)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Agentless Vulnerability &amp; Threat Detection</p></td>
<td><p><code>"TrendMicroProduct": "avtd"</code></p></td>
<td><p>This feature deploys a base stack to the region you select when connecting the account, as well as additional resources to each monitored region. The number of resources deployed depends of the number of regions monitored.</p>
<ul>
<li><p>Lambda (8 in base stack, plus 24 per region)</p></li>
<li><p>S3 Buckets (2 per region)</p></li>
<li><p>IAM Roles (9 in base stack, plus 25 per region)</p></li>
<li><p>Event Rules (2 in base stack, plus 10 per region</p></li>
<li><p>SQS (5 per region)</p></li>
<li><p>Custom (5 in base stack, plus 4 per region)</p></li>
<li><p>Secrets (1 in base stack, plus 1 per region)</p></li>
<li><p>Parameter Store Parameter (1 per region)</p></li>
<li><p>Step Function (1 per region)</p></li>
</ul></td>
</tr>
<tr>
<td><p>File Security Storage</p></td>
<td><p><code>"TrendMicroProduct": "fss"</code></p></td>
<td><ul>
<li><p>CloudFormation StackSets (1)</p></li>
<li><p>CloudFormation Stack (1 per region)</p></li>
<li><p>EventBridge (1)</p></li>
<li><p>IAM Roles (13)</p></li>
<li><p>IAM Policies (4)</p></li>
<li><p>SNS Topics (1)</p></li>
<li><p>SNS Subscriptions (2)</p></li>
<li><p>Lambda Permissions (3)</p></li>
<li><p>Lambda Functions (10)</p></li>
<li><p>Lambda EventSourceMapping (4)</p></li>
<li><p>SQS Queue (4)</p></li>
<li><p>SQS Queue Policy (4)</p></li>
<li><p>CloudWatch LogGroup (6)</p></li>
<li><p>System Manager Parameter Store (3)</p></li>
<li><p>Custom (10)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Data Security Posture</p></td>
<td><p><code>"TrendMicroProduct": "dspm"</code></p></td>
<td><p>Uses IAM permissions only.</p></td>
</tr>
<tr>
<td><p>Real-Time Posture Monitoring</p></td>
<td><p><code>"TrendMicroProduct": "rtpm"</code></p></td>
<td><ul>
<li><p>CloudFormation StackSets (1)</p></li>
<li><p>CloudFormation Stack (1 per region)</p></li>
<li><p>EventBridge (1)</p></li>
<li><p>IAM Role (3)</p></li>
<li><p>IAM Policy (1)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Detections for VPC Flow Logs</p></td>
<td><p><code>"TrendMicroProduct": "vpcflow"</code></p></td>
<td><ul>
<li><p>Lambda Functions (6 in base stack, plus 14 per region)</p></li>
<li><p>S3 Buckets (2 per region)</p></li>
<li><p>IAM roles (6)</p></li>
<li><p>Event Rules (2 in base stack, plus 6 per region)</p></li>
<li><p>SQS (4 per region)</p></li>
<li><p>Custom (3 in base stack, plus 5 per region)</p></li>
<li><p>Secrets (1 in base stack, plus 1 per region)</p></li>
<li><p>AppConfig (1 per region)</p></li>
<li><p>CloudWatch Log Group (6 in base stack, plus 14 per region)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Detections for Amazon Security Lake</p></td>
<td><p><code>"TrendMicroProduct": "seclake"</code></p></td>
<td><ul>
<li><p>CloudFormation StackSets (1)</p></li>
<li><p>CloudFormation Stack (1 per region)</p></li>
<li><p>Event Rules (2)</p></li>
<li><p>IAM roles (10)</p></li>
<li><p>Lambda Permissions (2)</p></li>
<li><p>Lambda Functions (8)</p></li>
<li><p>Lambda EventSourceMapping (3)</p></li>
<li><p>SQS Queue (2)</p></li>
<li><p>System Manager ParameterStore (3)</p></li>
<li><p>S3 Bucket (1)</p></li>
<li><p>SecurityLake Subscriber (1)</p></li>
<li><p>SecurityLake SubscriberNotification (1)</p></li>
<li><p>Custom Resource (3)</p></li>
</ul></td>
</tr>
</tbody>
</table>

## Resources deployed in Azure enviroments {#resources-deployed-in-azure-enviroments}

Learn which resources are deployed in your Azure environment for each Trend Vision One feature that you can enable on an Azure subscription.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr>
<th><p>Feature name</p></th>
<th><p>Services deployed (number)</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core features and Cyber Risk Exposure Management</p></td>
<td><p><strong>Resources:</strong></p>
<ul>
<li><p>App Registration (1)</p></li>
<li><p>Federated Credential (1)</p></li>
<li><p>Applications (1)</p></li>
<li><p>Role and Role Assignments of the Service Principal (1)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Agentless Vulnerability &amp; Threat Detection</p></td>
<td><p><strong>Resource Groups:</strong></p>
<ul>
<li><p><code>azurem_resource_group</code> (1 common)</p></li>
<li><p><code>azurem_resource_group</code> (3, one each for US/AS/EU)</p></li>
</ul>
<p><strong>IAM and Security</strong>:</p>
<ul>
<li><p>Custom Role Definition (1 for sentry)</p></li>
<li><p><code>azurem_role_assignment</code> (32 per region)</p></li>
</ul>
<p><strong>Key Vault</strong></p>
<ul>
<li><p><code>azurem_key_vault</code> (1)</p></li>
<li><p><code>azurerm_key_vault_access_policy</code> (1 for primary location, 2 per region)</p></li>
<li><p><code>azurerm_key_vault_secret</code> (2 for primary location)</p></li>
</ul>
<p><strong>Storage</strong></p>
<ul>
<li><p><code>azurerm_storage_account</code> (1 per region)</p></li>
<li><p><code>azurerm_storage_container</code> (3 per region)</p></li>
<li><p><code>azurerm_storage_blob</code> (21 per region)</p></li>
<li><p><code>azurerm_storage_queue</code> (8 per region)</p></li>
<li><p><code>azurerm_storage_table</code> (1 per region)</p></li>
<li><p><code>azurerm_storage_share</code> (2 per region)</p></li>
<li><p><code>azurerm_storage_management_policy</code> (1 per region)</p></li>
</ul>
<p><strong>Service Bus</strong></p>
<ul>
<li><p><code>azurerm_servicebus_namespace</code> (1 per region)</p></li>
<li><p><code>azurerm_servicebus_queue</code> (1 dispatcher for primary location, 3 per region)</p></li>
</ul>
<p><strong>App Services</strong></p>
<ul>
<li><p><code>azurerm_service_plan</code> (1 dispatcher for primary location, 5 per region)</p></li>
<li><p><code>azurerm_linux_function_app</code> (1 dispatcher for primary location, 16 per region)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Real-Time Posture Monitoring</p></td>
<td><p><strong>Azure resources</strong>:</p>
<ul>
<li><p>Resource Group (1)</p></li>
<li><p>Logic App Workflow (1)</p></li>
<li><p>Logic App HTTP Request Trigger (1)</p></li>
<li><p>Monitor Action Group (1)</p></li>
<li><p>Monitor Activity Log Alert (1)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Data Security Posture</p></td>
<td><p><strong>Terraform resources</strong>:</p>
<ul>
<li><p>azurerm_network_security_group</p></li>
<li><p>azurerm_network_security_rule</p></li>
<li><p>azurerm_resource_group</p></li>
<li><p>azurerm_automation_account</p></li>
<li><p>azurerm_role_assignment</p></li>
<li><p>azurerm_automation_webhook</p></li>
<li><p>azurerm_monitor_action_group</p></li>
<li><p>azurerm_automation_python3_package</p></li>
<li><p>azurerm_automation_runbook</p></li>
<li><p>azurerm_automation_job_schedule</p></li>
<li><p>azurerm_public_ip</p></li>
<li><p>azurerm_subnet</p></li>
<li><p>azurerm_subnet_network_security_group_association</p></li>
<li><p>azurerm_bastion_host</p></li>
</ul></td>
</tr>
<tr>
<td><p>Microsoft Defender for Endpoint Log Collection</p></td>
<td><p><strong>Azure resources</strong>:</p>
<ul>
<li><p>Resource Groups (1)</p></li>
<li><p>Event Hubs Namespace (1)</p></li>
<li><p>Event Hubs (1)</p></li>
<li><p>App Service Plans (1)</p></li>
<li><p>Function Apps (6)</p></li>
<li><p>Application Insights (6)</p></li>
<li><p>Log Analytics Workspaces (1)</p></li>
<li><p>Key Vault (1)</p></li>
<li><p>Key Vault Secrets (3)</p></li>
<li><p>Storage Accounts (1)</p></li>
<li><p>Storage Tables (1)</p></li>
<li><p>Storage Containers (1)</p></li>
<li><p>Role Assignments (12)</p></li>
<li><p>Azure AD App Role Assignments (7)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Detections for Azure Activity Log</p></td>
<td><p><strong>Azure resources</strong>:</p>
<ul>
<li><p>Resource Groups (1)</p></li>
<li><p>Event Hubs Namespace (1)</p></li>
<li><p>Event Hubs (1)</p></li>
<li><p>App Service Plans (1)</p></li>
<li><p>Function Apps (3)</p></li>
<li><p>Application Insights (3)</p></li>
<li><p>Log Analytics Workspaces (1)</p></li>
<li><p>Key Vault (1)</p></li>
<li><p>Key Vault Secrets (2)</p></li>
<li><p>Storage Accounts (1)</p></li>
<li><p>Storage Tables (1)</p></li>
<li><p>Storage Queues (1)</p></li>
<li><p>Storage Containers (1)</p></li>
<li><p>Role Assignments (8)</p></li>
</ul></td>
</tr>
</tbody>
</table>

## Resources deployed in Google Cloud environments {#resources-deployed-in-google-cloud-environments}

Learn which resources are deployed in your Google Cloud environment for each Trend Vision One feature that you can enable on a Google Cloud project.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr>
<th><p>Feature name</p></th>
<th><p>Google Cloud Project services deployed (number)</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core features and permissions</p></td>
<td><p><strong>Resources:</strong></p>
<ul>
<li><p>Service Account (1)</p></li>
<li><p>Workload Identity Pool (1)</p></li>
<li><p>Workload Identity Pool Provider (1)</p></li>
<li><p>IAM (3)</p></li>
<li><p>Tag Key (1)</p></li>
<li><p>Tag Value (1)</p></li>
<li><p>Cloud Storage (1)</p></li>
</ul>
<p><strong>Enabled APIs:</strong></p>
<ul>
<li><p>IAM Service Account Credentials</p></li>
<li><p>Cloud Resource Manager</p></li>
<li><p>Identity and Access Management</p></li>
<li><p>Cloud Build</p></li>
<li><p>Deployment Manager</p></li>
<li><p>Cloud Functions</p></li>
<li><p>Cloud Pub/Sub</p></li>
<li><p>Secret Manager</p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Security Posture</p></td>
<td> </td>
</tr>
<tr>
<td><p>Agentless Vulnerability &amp; Threat Detection</p></td>
<td><p><strong>Resources</strong>:</p>
<ul>
<li><p>Control Plane Service Account</p></li>
<li><p>Customer Role Service Account</p></li>
<li><p>Data Plane Service Account</p></li>
</ul>
<p>For more information on the permissions required for each service account, see <a href="trend-vision-one-google-cloud-required-permissions">Google Cloud required permissions</a>.</p></td>
</tr>
<tr>
<td><p>Real-Time Posture Monitoring</p></td>
<td><p>No additional required permissions.</p></td>
</tr>
</tbody>
</table>

## Resources deployed in Alibaba Cloud environments {#resources-deployed-in-alibaba-cloud-environments}

Learn which resources are deployed in your Alibaba Cloud environment for each Trend Vision One feature that you can enable on an Alibaba Cloud account.

<table>
<thead>
<tr>
<th><p>Feature name</p></th>
<th><p>Alibaba Cloud services deployed</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core features and Cyber Risk Exposure Management</p></td>
<td><ul>
<li><p>Resource Access Management (RAM) OIDC (1)</p></li>
<li><p>RAM Role (1)</p></li>
<li><p>RAM Policy (1)</p></li>
<li><p>Predefined tag (1)</p></li>
</ul>
<p><strong>Terraform backend components:</strong></p>
<ul>
<li><p>OSS Bucket (1)</p></li>
<li><p>Table Store Instance (1)</p></li>
<li><p>Table Store Table (1)</p></li>
</ul></td>
</tr>
</tbody>
</table>

## Resources deployed in Oracle Cloud environments {#resources-deployed-in-oracle-cloud-environments}

Learn which resources are deployed in your Oracle Cloud environment for each Trend Vision One feature that you can enable on an Oracle Cloud compartment.

<table>
<thead>
<tr>
<th><p>Feature name</p></th>
<th><p>Oracle Cloud Infrastructure (OCI) resources deployed</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core Features and Cyber Risk Exposure Management</p></td>
<td><ul>
<li><p><code>identity_domains_api_key</code> (1)</p></li>
<li><p><code>identity_domains_group</code> (1)</p></li>
<li><p><code>identity_domains_user</code> (1)</p></li>
<li><p><code>identity_policy</code> (1)</p></li>
</ul></td>
</tr>
</tbody>
</table>
