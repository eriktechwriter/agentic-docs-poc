---
slug: trend-vision-one-configure-approved-sp-sites
sidebar_position: 6
title: Configuring approved SharePoint Online sites
---

Specify the SharePoint Online sites on where files uploaded, created, synchronized, or modified will be excluded from scanning when those sites are selected as policy targets.

### Procedure {#procedure}

1.  Go to **Policies → Global Settings → User-Defined Lists → Approved/Blocked Lists**, click **SharePoint Online**, and locate the **Approved Sites** section.

2.  Perform the following tasks:

    - Add one or multiple sites to the approved sites list.

      1.  Click **+ Add**.

      2.  On the **Add approved SharePoint Online sites** screen that appears, select **Advanced Threat Protection** or **Data Loss Prevention** from the **Policy type** drop-down list. This determines which type of policies the specified sites apply to.

      3.  Search and select one or multiple sites to add as approved sites.

          :::note
          A maximum of 1,024 sites can be added.

          The added sites apply to the policies of the specified type for all organization.
          :::

      4.  Click **Save**.

    - Remove one or multiple sites from the approved sites list.

      1.  Select one or multiple sites and click **Delete**.
