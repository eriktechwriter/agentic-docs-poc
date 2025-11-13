---
slug: trend-vision-one-active-directory-mappings
title: Create Active Directory mappings
---

Create mappings between Active Directory organizational attributes and Trend Vision One tags.

### Procedure {#procedure}

1.  Go to **Tag Management → External tags → Active Directory**.

2.  If you have not yet configured Active Directory, go to **Workflow and Automation → Third-Party Integrations** to [configure Active Directory](ad-premises-integration.md).

3.  Click **+ Create mapping**.

    The **Create a mapping** window appears.

    :::note
    You can create a maximum of five Active Directory mappings.
    :::

4.  Configure the new mapping.

    1.  Type a **Mapping name**.

    2.  Select a **Third-party tag property** from the list.

    3.  Select a **Platform tag property** from the list.

        When you select a third-party tag property and a platform tag property, you establish a mapping relationship between that third-party tag property and the Trend Vision One tag property. The tag values belonging to the third-party tag property sync into Trend Vision One and become values of the platform tag property.

        :::note
        Mappings cannot be exactly the same. You can create more than one mapping with either the same Active Directory tag property or the same platform tag property, but not both.
        :::

5.  Click **Save**.

    The new mapping appears in **External tags → Active Directory**.

    :::warning[Important]
    If you selected the Asset group tag as the platform tag property for the mapping, Trend Micro recommends going to Asset Group Management to [create asset groups](creating-asset-group.md) associated with the tag values synced from Active Directory.

    If the mapping syncs a tag value with the same name as an existing asset group into Trend Vision One, no new asset group appears. All assets assigned the synced tag value merge into the existing asset group of the same name.

    For example, if a mapping syncs a third-party organizational unit **Sales** into Trend Vision One, where an asset group called **Sales** already exists, any assets with the **Sales** third-party tag automatically belong to the existing asset group.
    :::

6.  Click the ![](/images/trash_icon=GUID-47cf6867-6315-438e-8670-86ff36f22a28.webp) icon to delete an Active Directory mapping.

    Deleting an Active Directory mapping also deletes the synced tag values from Trend Vision One. Tag values added manually or synced by another mapping are not deleted.

    If you delete more than one mapping, the action immediately deletes mappings that have not synced third-party attributes into Trend Vision One. Mappings with synced tag values delete at the next daily sync.

    :::note
    All mappings sync once per day. During the daily sync, mappings sync any new tag values belonging to the third-party tag property into Trend Vision One.

    The daily sync deletes any mappings queued for deletion, allowing you to create new mappings. If a mapping fails to delete, the action tries again at the next daily sync.
    :::
