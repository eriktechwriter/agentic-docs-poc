---
slug: trend-vision-one-models-filters-email-collab-data
sidebar_position: 2
title: Creating filters and models for abnormal download behavior in SharePoint and OneDrive
---

Learn how to create and combine filters and models to detect abnormal SharePoint and OneDrive download behavior.

:::tip
- For more information about creating custom filters and models, see [Create a custom filter](./custom-filters/creating-custom-filter) and [Configure a custom model](./custom-models/configuring-custom-model).

- For more information about formatting filter queries, see [Filter query format](./custom-filters/custom-filter-query-format) and [Use regex in custom filters](./custom-filters/trend-micro-sigma-specification/using-regex-custom-filters).
:::

### Procedure {#procedure}

1.  On the Trend Vision One console, go to **Agentic SIEM & XDR → Detection Model Management → Custom Filters**.

2.  Click **Add**.

3.  Provide a descriptive filter name.

4.  Provide a description of the filter.

5.  Specify the severity associated with the event.

6.  Select **MESSAGE_ACTIVITY** for the event type.

7.  Select **COLLABORATION ACTIVITY** for the event ID.

8.  Type `actionName: FileDownloaded` for the query.

9.  Click **Save**.

    Your filter appears in the **Custom Filters** tab.

10. Go to **Agentic SIEM & XDR → Detection Model Management → Custom Models**.

11. Click **Add**.

12. Specify the model name and description.

13. Select **High** for the severity.

14. Select **Single filter** for the filter option.

    :::note
    You can select **Multiple filters** or **Multiple filters in sequence** to add up to 5 custom filters.
    :::

15. Select the filter you just created in the filter name drop-down menu.

16. Type `5` for the threshold to indicate that 5 file download events trigger an alert.

17. Select **User account** for the event grouping.

18. Select **15 minutes** for the frequency.

19. Select **Last 15 minutes** for the period.

20. Select **Enable after saving** for the status.

21. Click **Save**.

    Your model appears in the **Custom Models** tab.

    When the conditions of your models and filters are matched in your email and collaboration app detections, you can view the related alerts in **Workbench**.
