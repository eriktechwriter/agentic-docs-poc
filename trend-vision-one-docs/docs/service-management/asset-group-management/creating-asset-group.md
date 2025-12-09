---
slug: trend-vision-one-creating-asset-group
sidebar_position: 2
title: Create an asset group
---

Define an asset group to assign an Asset group tag value to the group's assets.

### Procedure {#procedure}

1.  In **Asset Group Management**, click **Get started** to create your first asset group.

    The node labeled **Your organization** appears.

    :::note
    You can create a maximum of 500 asset groups in up to 10 layers under your organization. The organization node does not count towards the maximum.
    :::

2.  Hover over the organization node and click the ![](/images/add_icon=cf892c2f-1a1f-4d22-848f-023067e4a507.webp) icon to add an asset group.

    An empty asset group appears under the organization node.

    The **Asset group settings** window appears.

3.  Configure the settings for the asset group.

    1.  Type a **Name** for the asset group.

        :::note
        Asset group names have a maximum length of 256 characters, and cannot have initial or final spaces.
        :::

    2.  Choose a tag value of the Asset group tag to associate with the new asset group.

        :::warning[Important]
        While all asset group nodes have a corresponding tag value, Asset group tag values created elsewhere in Trend Vision One do not necessarily have an associated asset group.

        If you have [manually created tag values for the Asset group tag property](../tag-management/tag-library) in Tag Management or another app, Trend Micro recommends associating each tag value with an asset group in Asset Group Management.

        If you select a tag value that is not assigned to any assets, the new asset group is empty. Empty asset groups do not display data when selected for analysis in any Trend Vision One features. To add assets to the new asset group, go to Attack Surface Discovery, Tag Management, or any app that supports tagging.
        :::

        - Select an existing value of the Asset group tag: Select a tag value from the list.

          :::note
          Tag values must be unique. You can only select tag values that are not already in use in another asset group.
          :::

        - Add a new value for the Asset group tag: Type a value and click **+ Add "\[Tag value name\]"**.

          :::note
          You can create a maximum of 500 values for the Asset group tag. Once you have added 500, you can only modify existing tag values, or delete tag values to create new ones.

          Tag values have a maximum length of 64 characters, and cannot have initial or final spaces. Tag value names only support letters, numbers, spaces, and the following special characters: .@:+=\_/-
          :::

    3.  Type a **Description** of the asset group.

    4.  Click **Save**.

    The new asset group appears in your organizational structure.

    If the asset group is empty, go to Attack Surface Discovery, Tag Management, or any app that supports tagging to assign the associated tag value to assets.

4.  To edit an existing asset group, hover over the new asset group and click the ![](/images/edit_icon=GUID-1F1D1164-5310-4D6D-ACD0-6049C86960AF.webp) icon.

5.  To delete an asset group, hover over the group and click the ![](/images/trash_icon=GUID-47cf6867-6315-438e-8670-86ff36f22a28.webp) icon, then click **Delete** in the confirmation window.

    This action deletes the selected asset group and any child asset groups, though individual assets retain their assigned Asset group tag values.
