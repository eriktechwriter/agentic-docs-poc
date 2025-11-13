---
slug: trend-vision-one-existing-products-instance
title: Connect existing products to product instance
---

:::warning[Important]
If the product you want to connect is already connected to another Trend Vision One instance, before you can connect the product to your current console, you must first disconnect the product from the other Trend Vision One console.
:::

### Procedure {#procedure}

1.  Go to **Service Management → Product Instance**.

2.  Click **Add existing product**.

    The **Product Connection** window appears.

    Depending on the product, you can connect products to Trend Vision One automatically or via an enrollment token. Some products require additional settings for optimal performance.

3.  Select one of the following products to automatically connect the product to Trend Vision One based on your business ID:

    - [Trend Micro Cloud App Security](configure-cloud-app-security.md)

    - Trend Micro Email Security

    - Trend Micro Web Security

    1.  Select a product under **Instance type**.

    2.  You can add a description to identify the product instance.

    3.  Click **Save**.

        The product instance connects automatically to Trend Vision One.

4.  Connect the following products using an enrollment token:

    - [TippingPoint Security Management System](tippingpoint-sms-connection-guides.md)

    - [Trend Cloud One](configure-trend-cloud-one.md)

    - Trend Micro Apex Central On-premises

      :::warning[Important]
      The connection process only transfers information related to the product instance and base agents, but not existing XDR Endpoint Sensors. Trend Micro recommends transferring all product and base agent information to ensure that XDR Endpoint Sensor agents can be correctly associated with endpoints, then contacting support if necessary. For more information, see [Endpoint Inventory update considerations for customers migrating multiple consoles](endpoint-inventory-updates.md) .

      Product Instance does not support hybrid environments. If you have connected both an on-premises and SaaS Trend Micro Apex One server to your on-premises Trend Micro Apex Central server, you must first disconnect, then reconnect the SaaS server in Product Instance.
      :::

    - Trend Micro Apex One as a Service

      :::warning[Important]
      The connection process only transfers information related to the product instance and base agents, but not existing XDR Endpoint Sensors. Trend Micro recommends transferring all product and base agent information to ensure that XDR Endpoint Sensor agents can be correctly associated with endpoints, then contacting support if necessary. For more information, see [Endpoint Inventory update considerations for customers migrating multiple consoles](endpoint-inventory-updates.md) .
      :::

    - [Trend Micro Apex One On-premises](configuring-apex-one-onprem.md)

      :::warning[Important]
      Trend Vision One does not support a direct connection to an on-premises Trend Micro Apex One server. Connect your Apex One servers to Trend Vision One through a Trend Micro Apex Central management server connected to Trend Vision One.
      :::

    - Trend Micro Deep Discovery Analyzer

    - Trend Micro Deep Discovery Email Inspector

    - Trend Micro Deep Discovery Inspector

      :::tip
      You can manage Deep Discovery Inspector appliance connections in [Network Inventory](network-inventory.md).
      :::

    - [Trend Micro Deep Security](configure-deep-security-software.md)

    - Trend Micro Worry-Free Business Security Services

    - [TXOne EdgeOne](configure-txone-edgeone.md)

    - [TXOne StellarOne](configure-txone-stellarone.md)

    1.  Select the product that you want to connect for **Instance type**.

    2.  Click **Generate token** to generate the enrollment token.

    3.  Copy the token into the console for the selected product.

    4.  Back in Trend Vision One, click **Save** or **Close** to close the **Product Connection** window.

        The product instance connects to Trend Vision One.
