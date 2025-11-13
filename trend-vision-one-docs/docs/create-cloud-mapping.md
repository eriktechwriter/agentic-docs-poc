---
slug: trend-vision-one-create-cloud-mapping
title: Create cloud mappings
---

Create a new cloud mapping to sync third-party tag values into Trend Vision One as cloud projects for grouping your cloud assets.

When you create a cloud mapping, tag values synced from your cloud provider become the names of cloud projects in Trend Vision One. All cloud assets with the same tag property and value belong to the same cloud project, enabling you to better organize your cloud assets.

:::tip
For information on defining cloud projects using automated tagging rules, see [Define and manage projects](define-manage-projects.md).
:::

### Procedure {#procedure}

1.  Go to **Tag Management → External tags → Cloud mappings**.

2.  Click **+ Create mapping**.

    The **Create a cloud mapping** window appears.

    :::note
    You can create a maximum of five cloud mappings.
    :::

3.  Configure the new mapping.

    1.  Type a **Mapping name**.

    2.  Select a **Cloud provider tag property** from the list.

        When you select a cloud provider tag property, you establish a mapping relationship between that cloud provider tag property and the Trend Vision One Cloud project platform tag. The tag values belonging to the cloud provider tag property sync into Trend Vision One and become cloud project names, and all cloud assets with the same tag property and value belong to the same cloud project.

        :::note
        Different cloud mappings cannot share the same cloud provider tag property.

        Your cloud mappings can sync a maximum of 1,000 tag values total into Trend Vision One. You cannot create a new cloud mapping if the new mapping causes the number of synced tag values to exceed 1,000.
        :::

4.  Click **Save**.

    The new cloud mapping appears in **External tags → Cloud mappings**.

5.  Click the ![](/images/edit_icon=GUID-1F1D1164-5310-4D6D-ACD0-6049C86960AF.webp) icon to edit an existing cloud mapping.

    If you change the cloud provider tag property for a mapping, all the tag values of that tag property become cloud project names in Trend Vision One.

6.  Click the ![](/images/trash_icon=GUID-47cf6867-6315-438e-8670-86ff36f22a28.webp) icon to delete a cloud mapping.

    If you delete this mapping, the mapping relationship between the selected cloud provider tag property and the Trend Vision One Cloud project tag no longer exists. The tag values of the Cloud project tag property remain unchanged.
