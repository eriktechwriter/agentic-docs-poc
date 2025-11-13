---
slug: trend-vision-one-tag-library-tab
title: Tag library
---

View an inventory of your custom and platform tags.

Trend Vision One supports the following tag types:

- Custom tags: You can manually create custom tag properties, add tag values, and assign the tags to assets.

- Platform tags: Trend Vision One defines platform tag properties, but you can take certain actions on different platform tag types.

  - Customizable platform tags: You can add tag values and assign the tags to assets.

  - Assignable platform tags: Trend Vision One creates the tag properties and tag values, but you can assign the tags to assets.

**Tag library** displays a full inventory of your tags, including the following information:

- **Tag property**: The tag key, which encompasses all associated tag values

- **Tag values**: The number of tag values under the tag property

  :::tip
  Expand the list of tag values for a given tag property to view the number of each asset type tagged with each value.

  Click the number of any asset type to [assign or remove the tag value from assets](assign-or-remove-tag.md) in the **Manage tagged assets** window.
  :::

- **Tagged assets**: The number of assets tagged with a value of the tag property

The following table outlines the actions you can take on custom tags:

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
<td><p>Create custom tags</p></td>
<td><p>Click <strong>+ Add tag</strong> to <a href="trend-vision-one-create-custom-tags">create a new custom tag</a>.</p></td>
</tr>
<tr>
<td><p>Edit custom tags</p></td>
<td><p>Click the <img src="./images/edit_icon=GUID-1F1D1164-5310-4D6D-ACD0-6049C86960AF.webp" /> icon next to a custom tag property to edit the tag property and tag values in the <strong>Edit tags</strong> window.</p>

:::tip

<p>The <strong>Edit tags</strong> window labels all tag values with <strong>User</strong> for manually created values, or <strong>Mapping</strong> for values synced from a third-party source. Hover over any <strong>Mapping</strong> label to view the specific source.</p>
<p>If a user creates a tag value, and an external mapping syncs a value of the same name into Trend Vision One, the tag value displays both labels.</p>

:::

</td>
</tr>
<tr>
<td><p>Delete custom tag properties</p></td>
<td><p>Click the <img src="./images/trash_icon=GUID-47cf6867-6315-438e-8670-86ff36f22a28.webp" /> icon to delete a tag property and all associated tag values.</p>

:::note

<p>You cannot delete a tag property with one or more tag values used in an automated tagging rule.</p>

:::

</td>
</tr>
<tr>
<td><p>Delete custom tag values</p></td>
<td><p>Select one or more tag values and click <strong>Delete</strong>.</p>

:::note

<p>You cannot delete tag values used in automated tagging rules.</p>

:::

</td>
</tr>
<tr>
<td><p>Manage tagged assets</p></td>
<td><p>Click <strong>Manage assets</strong> next to any tag value to <a href="trend-vision-one-assign-or-remove-tag">assign or remove the tag from assets</a>.</p>
<p>You can also click the number of tagged assets for any given asset type to manage tagged assets.</p></td>
</tr>
<tr>
<td><p>Remove custom tags from all assets</p></td>
<td><p>Select one or more tag values and click <strong>Remove from all assets</strong>.</p>

:::note

<p>Removing a tag value from all assets does not delete the tag.</p>

:::

</td>
</tr>
</tbody>
</table>

The following table outlines the actions you can take on customizable platform tags:

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
<td><p>Manage platform tag values</p></td>
<td>Click the <img src="./images/edit_icon=GUID-1F1D1164-5310-4D6D-ACD0-6049C86960AF.webp" /> icon next to a customizable platform tag property to add, edit, or remove tag values in the <strong>Edit tags</strong> window.

:::warning[Important]

<p>If you manually add a tag value to the Asset group tag, Trend Micro recommends going to <strong>Service Management → Asset Group Management</strong> to create a corresponding asset group associated with the new tag value.</p>

:::

</td>
</tr>
<tr>
<td><p>Delete platform tag values</p></td>
<td><p>Select one or more tag values and click <strong>Delete</strong>.</p>

:::warning[Important]

<p>If you delete a tag value of the Asset group tag, you delete the associated asset groups. Deleted asset groups no longer appear when selecting asset groups for analysis in any Trend Vision One apps.</p>

:::

</td>
</tr>
<tr>
<td><p>Manage tagged assets</p></td>
<td><p>Click <strong>Manage assets</strong> next to any tag value to <a href="trend-vision-one-assign-or-remove-tag">assign or remove the tag from assets</a>.</p>
<p>You can also click the number of tagged assets for any given asset type to manage tagged assets.</p></td>
</tr>
<tr>
<td><p>Remove platform tags from all assets</p></td>
<td><p>Select one or more tag values and click <strong>Remove from all assets</strong>.</p>

:::note

<p>Removing a tag value from all assets does not delete the tag.</p>

:::



:::warning[Important]

<p>If you remove a tag value of the Asset group tag from all assets, you make the associated asset group empty. Empty asset groups do not display data when selected for analysis in any Trend Vision One apps.</p>

:::

</td>
</tr>
</tbody>
</table>

The following table outlines the actions you can take on assignable platform tags:

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
<td><p>Manage tagged assets</p></td>
<td><p>Click <strong>Manage assets</strong> next to any tag value to <a href="trend-vision-one-assign-or-remove-tag">assign or remove the tag from assets</a>.</p>
<p>You can also click the number of tagged assets for any given asset type to manage tagged assets.</p></td>
</tr>
</tbody>
</table>

:::tip
To [manage tags](managing-tagged-assets.md) for Attack Surface Discovery, Endpoint Inventory, or Container Security assets, select one or more assets and click **Manage tags**.
:::

**Related information**

- [Create custom tags](create-custom-tags.md "Add new custom tags to assign to assets and improve your asset organization.")
- [Assign or remove a tag from assets](assign-or-remove-tag.md "Manage the assets tagged with an individual tag value.")
- [Manage tags for assets](managing-tagged-assets.md "Select assets in Attack Surface Discovery, Endpoint Inventory, or Container Security and add or remove tags to enhance your asset organization.")
