---
slug: trend-vision-one-oracle-required-granted-permissions
sidebar_position: 6
title: Oracle Cloud Infrastructure required and granted permissions
---

Review the permissions required to deploy resources and the permissions granted during the Terraform process.

The Terraform process assigns certain permissions to itself to establish the connection with Cloud Accounts and Trend Vision One cloud security services. These permissions include enabling the Cloud Accounts app and security services to obtain temporary credentials and complete tasks within your Oracle cloud environment.

**Oracle required permissions**

<table>
<thead>
<tr>
<th><p>Feature</p></th>
<th>Permissions</th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core Features and Cyber Risk Exposure Management</p></td>
<td><ul>
<li><p>Allow group {user_group_for_deployment} to manage orm-stacks in compartment id {compartment_ID_where_stack_is_deployed}</p></li>
<li><p>Allow group {user_group_for_deployment} to manage orm-jobs in compartment id {compartment_ID_where_stack_is_deployed}</p></li>
<li><p>Allow group {user_group_for_deployment} to manage orm-config-source-providers in compartment id {compartment_ID_where_stack_is_deployed}</p></li>
<li><p>Allow group {user_group_for_deployment} to inspect compartments in compartment id {compartment_ID_where_stack_is_deployed}</p></li>
<li><p>Allow group {user_group_for_deployment} to manage policies in compartment id {compartment_ID_where_stack_is_deployed}</p></li>
<li><p>Allow group {user_group_for_deployment} to manage users in compartment id {compartment_ID_of_your_identity_domain}</p></li>
<li><p>Allow group {user_group_for_deployment} to read domains in compartment id {compartment_ID_of_your_identity_domain}</p></li>
<li><p>Allow group {user_group_for_deployment} to manage groups in compartment id {compartment_ID_of_your_identity_domain}</p></li>
</ul></td>
</tr>
<tr>
<td><p>Agentless Vulnerability &amp; Threat Detection</p></td>
<td><p>You must be added to the Administrators group to deploy Agentless Vulnerability &amp; Threat Detection in OCI environments.</p></td>
</tr>
</tbody>
</table>
