---
slug: trend-vision-one-fs-create-workbench-alert
sidebar_position: 2
title: Create a Workbench alert for File Security
---

File Security is not currently integrated with SAE alerts. However, you can use Detection Model Management to create and configure a Custom Defined Model (CDM) to trigger alerts based on malware detection by File Security.

### Procedure {#procedure}

1.  Go to **Agentic SIEM & XDR → Detection Model Management → Custom Filters**.

2.  Select **Add Filters**.

3.  Specify the general settings of the filter:

    - **Filter name**

    - **Description**

    - **Severity**

4.  Complete the **Event Settings** section:

    - **For Event Type**, select DETECTION

    - **For Event Id**, select MALWARE_DETECTION

    - For Query, enter

      - For File Security Storage, enter `productCode:sfc`

      - For File Security SDK, enter `productCode:sfs`

5.  Click **Save**.

6.  Go to **Agentic SIEM & XDR → Detection Model Management → Custom Models**,

7.  Click **Add models**.

8.  Specify the general settings of the model:

    - **Model name**

    - **Description**

    - **Severity**

    :::warning[Important]
    Selecting a severity of **Medium** or higher affects the Risk Index in Cyber Risk Overview and Threat and Exposure Management. During testing and tuning of the model, select a severity of **Low** to avoid accidentally affecting your indexes.
    :::

9.  Complete the **Event Filtering** section:

    - **Filter Options**: Single Filter

    - **Filter Name**: Filter that you created

    - **Threshold**: 1

10. For **Event Grouping**, select group by Company.

11. For **Schedule**, use the configuration below for the quickest alert. You can adjust the settings if you prefer. For more information, see[Configure a custom model](../../agentic-siem-xdr/detection-model-management/custom-models/configuring-custom-model) .

    - **Frequency**: 15 minutes

    - **Period**: Last 15 minutes

12. Click **Save**.

13. Got to**Agentic SIEM & XDR → Detection Model Management → Custom Models** and confirm the status of the model is on.
