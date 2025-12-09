---
slug: trend-vision-one-track-sensitive-data-movement
sidebar_position: 1
title: Track sensitive data movement
---

With Data Security you can investigate the transmission of sensitive data in your monitored network locations. When you create a data policy, Trend Vision One forwards Data Detection and Response information to Agentic SIEM & XDR, where you can:

- View and investigate related alerts in Workbench

- View sensitive data events in Observed Attack Techniques

- Search for sensitive data events in **XDR Data Explorer**

- Open a graph view called Data Lineage that depicts the movement of sensitive data in your environment. You can access Data Lineage from both Workbench and Observed Attack Techniques.

:::note
To access Data Lineage, you must enable Data Security and then do the following:

- Create a data policy to specify the network locations you want to monitor for sensitive data. For more information, see [Data Policy](../data-policy)

- Configure an endpoint security policy with the **Endpoint sensor detection and response** and **Data Detection Response** settings enabled. For more information, see [Configure endpoint security policies](../../../endpoint-security/endpoint-security-configuration/endpoint-security-policies/configuring-endpoint-policies).

  For more information about Data Security, see [Data Security](..).
:::

**Related information**

- [View sensitive data alerts in Workbench](./sensitive-data-alerts-workbench)
- [View sensitive data events in Observed Attack Techniques](./sensitive-data-events-oat)
- [Track data lineage](./track-data-lineage)
