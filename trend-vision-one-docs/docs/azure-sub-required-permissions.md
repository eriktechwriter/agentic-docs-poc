---
slug: trend-vision-one-azure-sub-required-permissions
title: Azure required and granted permissions
---

## Azure subscriptions required permissions {#azure-subscriptions-required-permissions}

Review the permissions required to deploy resources and the permissions granted when connecting Azure subscriptions to Trend Vision One.

The following permissions are required to be able to successfully deploy Trend Vision One cloud security resources to your subscription.

- For Microsoft Entra ID users, your sign in must have the following roles:

  - Application Administrator

  - Privileged Role Administrator

- For Microsoft Azure users, your sign in must have the following or higher role on the subscription you are connecting:

  - User Access Administrator

  - Contributor

- To enable Microsoft Defender for Endpoint Collection or Azure Activity logs, your Microsoft Azure sign in must have the following role:

  - Key Vault Secrets Officer

The Terraform process assigns certain permissions to itself to establish the connection with Cloud Accounts and Trend Vision One cloud security services. These permissions include enabling the Cloud Accounts app and security services to obtain temporary credentials and complete tasks within your Azure cloud environment.

**Azure required permissions**

<table>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Required permissions</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core features</p></td>
<td><p><strong>Azure Resource Manager (ARM) permissions:</strong></p>
<ul>
<li><p><code>Microsoft.ContainerService/managedClusters/listClusterUserCredential/action</code></p></li>
<li><p><code>Microsoft.ContainerService/managedClusters/read</code></p></li>
<li><p><code>Microsoft.Resources/subscriptions/resourceGroups/read</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/read</code></p></li>
<li><p><code>Microsoft.Authorization/roleDefinitions/read</code></p></li>
<li><p><code>*/read</code></p></li>
</ul>
<p><strong>API Permissions:</strong></p>
<ul>
<li><p>Azure Active Directory Graph (4)</p>
<ul>
<li><p>Directory.Read.All | Delegated</p></li>
<li><p>Directory.Read.All | Application</p></li>
<li><p>User.Read | Delegated</p></li>
<li><p>User.Read.All | Delegated</p></li>
</ul></li>
<li><p>Microsoft Graph (4)</p>
<ul>
<li><p>Directory.Read.All | Application</p></li>
<li><p>User.Read | Delegated</p></li>
<li><p>User.Read.All | Delegated</p></li>
<li><p>User.Read.All | Application</p></li>
</ul></li>
</ul></td>
</tr>
<tr>
<td rowspan="7"><p>Server &amp; Workload Protection</p></td>
<td><p>Subscription permissions:</p>
<ul>
<li><p><code>Microsoft.Resources/subscriptions/read</code></p></li>
<li><p><code>Microsoft.Resources/subscriptions/resourceGroups/read</code></p></li>
<li><p><code>Microsoft.Resources/providers/read</code></p></li>
<li><p><code>Microsoft.Resources/resources/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Virtual Machine (VM) permissions:</p>
<ul>
<li><p><code>Microsoft.Compute/virtualMachines/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Virtual Machine Scale Set (VMSS) permissions:</p>
<ul>
<li><p><code>Microsoft.Compute/virtualMachineScaleSets/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Classic Virtual Machine (VM) permissions:</p>
<ul>
<li><p><code>Microsoft.ClassicCompute/virtualMachines/read</code></p></li>
<li><p><code>Microsoft.ClassicCompute/domainNames/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Network permissions:</p>
<ul>
<li><p><code>Microsoft.Network/networkSecurityGroups/read</code></p></li>
<li><p><code>Microsoft.Network/networkInterfaces/read</code></p></li>
<li><p><code>Microsoft.Network/publicIPAddresses/read</code></p></li>
<li><p><code>Microsoft.Network/virtualNetworks/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Azure Metadata API permissions:</p>
<ul>
<li><p><code>Microsoft.Resources/subscriptions/resourceGroups/read</code></p></li>
<li><p><code>Microsoft.Compute/locations/read </code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Authentication and IAM permissions:</p>
<ul>
<li><p><code>Microsoft.Resources/deployments/read </code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/read </code></p></li>
<li><p><code>Microsoft.Authorization/roleDefinitions/read </code></p></li>
</ul></td>
</tr>
<tr>
<td rowspan="3"><p>Cloud Security Posture</p></td>
<td><p>requiredResourceAccess:</p>
<ul>
<li><p>resourceAppName: <code>Microsoft Graph</code></p></li>
<li><p>resourceAccess:</p>
<ul>
<li><p>name: <code>User.Read</code></p></li>
<li><p>type: <code>Delegated</code></p></li>
<li><p>name: <code>User.Read.All</code></p></li>
<li><p>type: <code>Delegated</code></p></li>
<li><p>name: <code>Directory.Read.All</code></p></li>
<li><p>type: <code>Application</code></p></li>
<li><p>name: <code>User.Read.All</code></p></li>
<li><p>type: <code>Application</code></p></li>
<li><p>name:<code> Policy.Read.All</code></p></li>
<li><p>type: <code>Application</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr>
<td><p>requiredRoleAccess</p>
<ul>
<li><p>resourceAppName: <code>Microsoft App Configuration</code></p>
<p>roleActions:</p>
<ul>
<li>name: <code>Microsoft.AppConfiguration/configurationStores/ListKeyValue/action</code></li>
</ul></li>
<li><p>resourceAppName: <code>Microsoft Network</code></p>
<p>roleActions:</p>
<ul>
<li><p>name: <code>Microsoft.Network/networkWatchers/queryFlowLogStatus/action</code></p></li>
</ul></li>
<li><p>resourceAppName:<code> Microsoft Web</code></p>
<p>roleActions:</p>
<ul>
<li><p>name: <code>Microsoft.Web/sites/config/list/Action</code></p></li>
</ul></li>
<li><p>resourceAppName: <code>Microsoft Key Vault</code></p>
<p>dataActions:</p>
<ul>
<li><p>name: <code>Microsoft.KeyVault/vaults/keys/read</code></p></li>
<li><p>name: <code>Microsoft.KeyVault/vaults/secrets/readMetadata/action</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr>
<td><p>requiredTenantScopeRoleAccess</p>
<ul>
<li><p>resourceAppName: <code>Microsoft Management</code></p>
<p>roleActions:</p>
<ul>
<li><p>name: <code>Microsoft.Management/managementGroups/read</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr>
<td rowspan="3"><p>Agentless Vulnerability &amp; Threat Detection</p></td>
<td><p><strong>Azure Resource Manager (ARM) permissions:</strong></p>
<ul>
<li><p><code>Microsoft.ContainerRegistry/registries/generateCredentials/action</code></p></li>
<li><p><code>Microsoft.ContainerRegistry/registries/read</code></p></li>
<li><p><code>Microsoft.ContainerRegistry/registries/pull/read</code></p></li>
<li><p><code>Microsoft.ContainerRegistry/registries/tokens/write</code></p></li>
<li><p><code>Microsoft.ContainerRegistry/registries/tokens/operationStatuses/read</code></p></li>
<li><p><code>Microsoft.ContainerRegistry/registries/scopeMaps/read</code></p></li>
<li><p><code>Microsoft.ContainerRegistry/registries/tokens/read</code></p></li>
<li><p><code>Microsoft.Compute/disks/read</code></p></li>
<li><p><code>Microsoft.Compute/virtualMachines//read</code></p></li>
<li><p><code>Microsoft.HybridCompute/machines//read</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/write</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/delete</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/read</code></p></li>
<li><p><code>Microsoft.Compute/locations/usages/read</code></p></li>
<li><p><code>Microsoft.Quota/quotas/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p><strong>Trend Micro Resource Group permissions</strong></p>
<p>Azure built-in role: Contributor</p>
<ul>
<li><p>Actions:</p>
<ul>
<li><p><code>Allow Actions:*</code></p></li>
</ul></li>
</ul>
<ul>
<li><p>NotActions:</p>
<ul>
<li><p><code>Microsoft.Authorization/*/Delete</code></p></li>
<li><p><code>Microsoft.Authorization/*/Write</code></p></li>
<li><p><code>Microsoft.Authorization/elevateAccess/Action</code></p></li>
<li><p><code>Microsoft.Blueprint/blueprintAssignments/write </code></p></li>
<li><p><code>Microsoft.Blueprint/blueprintAssignments/delete </code></p></li>
<li><p><code>Microsoft.Compute/galleries/share/action </code></p></li>
<li><p><code>Microsoft.Purview/consents/write </code></p></li>
<li><p><code>Microsoft.Purview/consents/delete </code></p></li>
<li><p><code>Microsoft.Resources/deploymentStacks/manageDenySetting/action </code></p></li>
<li><p><code>Microsoft.Subscription/cancel/action </code></p></li>
<li><p><code>Microsoft.Subscription/enable/action </code></p></li>
</ul></li>
</ul>
<p>Azure built-in role: AcrPull</p>
<ul>
<li><p><code>Microsoft.ContainerRegistry/registries/pull/read </code></p></li>
</ul>
<p>Azure built-in role: Storage Blob Data Owner</p>
<ul>
<li><p><code>Microsoft.Storage/storageAccounts/blobServices/containers/* </code></p></li>
<li><p><code>Microsoft.Storage/storageAccounts/blobServices/generateUserDelegationKey/action </code></p></li>
<li><p><code>Microsoft.Storage/storageAccounts/blobServices/containers/blobs/* </code></p></li>
</ul></td>
</tr>
<tr>
<td><p><strong>Trend Micro Storage ID permissions</strong></p>
<p>Azure built-in role: Storage Blob Data Reader</p>
<ul>
<li><p><code>Microsoft.Storage/storageAccounts/blobServices/containers/read </code></p></li>
<li><p><code>Microsoft.Storage/storageAccounts/blobServices/generateUserDelegationKey/action </code></p></li>
<li><p><code>Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Data Security Posture</p></td>
<td><p><strong>Azure Resource Manager (ARM) permissions:</strong></p>
<ul>
<li><p><code>Microsoft.Network/networkSecurityGroups/read</code></p></li>
<li><p><code>Microsoft.Network/networkSecurityGroups/write</code></p></li>
<li><p><code>Microsoft.Network/networkSecurityGroups/delete</code></p></li>
<li><p><code>Microsoft.Network/networkSecurityGroups/securityRules/read</code></p></li>
<li><p><code>Microsoft.Network/networkSecurityGroups/securityRules/write</code></p></li>
<li><p><code>Microsoft.Network/networkSecurityGroups/securityRules/delete</code></p></li>
<li><p><code>Microsoft.Resources/subscriptions/resourceGroups/read</code></p></li>
<li><p><code>Microsoft.Resources/subscriptions/resourceGroups/write</code></p></li>
<li><p><code>Microsoft.Resources/subscriptions/resourceGroups/delete</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/read</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/write</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/delete</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/read</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/write</code></p></li>
<li><p><code>Microsoft.Authorization/roleAssignments/delete</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/webhooks/read</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/webhooks/write</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/webhooks/delete</code></p></li>
<li><p><code>Microsoft.Insights/actionGroups/read</code></p></li>
<li><p><code>Microsoft.Insights/actionGroups/write</code></p></li>
<li><p><code>Microsoft.Insights/actionGroups/delete</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/python3Packages/read</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/python3Packages/write</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/python3Packages/delete</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/runbooks/read</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/runbooks/write</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/runbooks/delete</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/jobSchedules/read</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/jobSchedules/write</code></p></li>
<li><p><code>Microsoft.Automation/automationAccounts/jobSchedules/delete</code></p></li>
<li><p><code>Microsoft.Network/publicIPAddresses/read</code></p></li>
<li><p><code>Microsoft.Network/publicIPAddresses/write</code></p></li>
<li><p><code>Microsoft.Network/publicIPAddresses/delete</code></p></li>
<li><p><code>Microsoft.Network/virtualNetworks/subnets/read</code></p></li>
<li><p><code>Microsoft.Network/virtualNetworks/subnets/write</code></p></li>
<li><p><code>Microsoft.Network/virtualNetworks/subnets/delete</code></p></li>
<li><p><code>Microsoft.Network/virtualNetworks/subnets/join/action</code></p></li>
<li><p><code>Microsoft.Network/bastionHosts/read</code></p></li>
<li><p><code>Microsoft.Network/bastionHosts/write</code></p></li>
<li><p><code>Microsoft.Network/bastionHosts/delete</code></p></li>
</ul></td>
</tr>
<tr>
<td><p>Cloud Detections for Azure Activity Log</p></td>
<td><p>No required permissions.</p></td>
</tr>
<tr>
<td><p>Microsoft Defender for Endpoint Log Collection</p></td>
<td><ul>
<li><p><code>Microsoft.KeyVault/vaults/secrets/read</code></p></li>
<li><p><code>Microsoft.KeyVault/vaults/secrets/write</code></p></li>
</ul></td>
</tr>
</tbody>
</table>
