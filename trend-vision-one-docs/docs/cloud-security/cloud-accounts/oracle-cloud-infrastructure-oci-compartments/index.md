---
slug: trend-vision-one-oracle-cloud-compartments
sidebar_position: 1
title: Oracle Cloud Infrastructure (OCI) compartments
---

Manage connections with your Oracle Cloud Infrastructure (OCI) compartments to allow Trend Vision One visibility into your cloud environment.

The Oracle Cloud screen allows you to view connected Oracle Cloud Infractructure (OCI) compartments and manage connections within the Cloud Accounts app. You can access the Oracle Cloud screen on the Trend Vision One console by navigating to **Cloud Security → Cloud Accounts → Oracle** and clicking on the **Oracle** tab.

You can take the following actions from the Cloud Accounts - Oracle screen.

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><p>Action</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Add an OCI compartment</p></td>
<td><p>Add and connect an OCI compartment to Cloud Accounts</p>
<p>Click <strong>Add Account</strong> to <a href="trend-vision-one-adding-oracle-cloud-compartment">Connect an OCI compartment using Oracle Resource Manager (ORM)</a>.</p></td>
</tr>
<tr>
<td><p>Remove compartments</p></td>
<td><p>Remove and disconnect OCI compartments from Cloud Accounts</p>
<p>Select one or more compartments and click <strong>Remove</strong>.</p></td>
</tr>
<tr>
<td><p>Manage compartment settings</p></td>
<td><p>Click on a compartment name to view and edit the settings or update the terraform resource. For more information, see <a href="trend-vision-one-compartment-settings">Manage compartment settings</a>.</p>

:::note

<p>Updates to the resource template are not applied automatically when released. You must update terraform resources to apply the latest security settings and resource template.</p>

:::

</td>
</tr>
<tr>
<td><p>Fix compartment status issues</p></td>
<td><p>Use the available actions to address different project statuses</p>
<p>Clicking the action opens the Compartment Settings screen.</p>
<ul>
<li><p><strong>Update feature stack</strong>: The compartment settings in Trend Vision One are not in sync with the deployed resource. This may occur if there was a recent update, or if the resource script was not run on your compartment. <a href="trend-vision-one-oracle-cloud-resource-update">Update compartment resources</a> to fix the issue.</p></li>
<li><p><strong>Reconnect</strong>: An issue is preventing Trend Vision One from connecting or deploying to your compartment. Verify the compartment information is correct and <a href="trend-vision-one-oracle-cloud-resource-update">update terraform resources</a> to reconnect your compartment.</p></li>
</ul></td>
</tr>
</tbody>
</table>

**Related information**

- [Connect Oracle Cloud Infrastructure (OCI) compartments](./connect-oracle-cloud-infrastructure-oci-compartments "Add your Oracle Cloud Infrastructure (OCI) compartments to provide visibility into your cloud environment.")
- [Manage compartment settings](./manage-compartment-settings "Manage connected Oracle Cloud Infrastructure (OCI) compartment settings and update deployed resources.")
- [Oracle Cloud Infrastructure (OCI) features and permissions](./oracle-features-permissions)
- [Oracle Cloud Infrastructure (OCI) supported regions and limitations](./oracle-supported-regions "Supported regions and deployment limitations for connecting your OCI compartments.")
