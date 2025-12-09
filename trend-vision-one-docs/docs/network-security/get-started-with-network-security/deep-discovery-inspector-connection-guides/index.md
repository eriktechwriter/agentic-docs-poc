---
slug: trend-vision-one-ddi-connection-deployment
sidebar_position: 1
title: Deep Discovery Inspector connection guides
---

Learn how to connect Deep Discovery Inspector appliances with Network Inventory.

:::warning[Important]
- **Network Security** supports connecting with Deep Discovery Inspector version 5.7 Service Pack 3 or later. If your appliance is using a previous version (5.7 Service Pack 2 or prior), upgrade to the latest version to connect to **Network Security**.

- If you have connected your Deep Discovery Inspector appliances to Trend Vision One using Deep Discovery Director, you must reset Network Inventory before reconnecting your appliances.
:::

You can connect your Deep Discovery Inspector appliances to Trend Vision One in the Network Inventory app. Network Inventory also provides the ability to deploy a Deep Discovery Inspector virtual appliance to AWS.

If you have not deployed a Deep Discovery Inspector appliance, you can download the appliance image from the [Customer Success Portal](https://success.trendmicro.com/dcx/s/license). For deployment steps, see the Deep Discovery Inspector Installation and Deployment Guide on the [Deep Discovery Inspector help center](https://docs.trendmicro.com/en-us/documentation/deep-discovery-inspector/).

View the following connection guides based your appliance version and preferred connection method:

- To connect Deep Discovery Inspector versions 5.7 Service Pack 3 or later directly with Trend Vision One, see [Connect a Deep Discovery Inspector appliance directly](./connecting-ddi-directly)

- To connect Deep Discovery Inspector versions 6.7 or later using a Service Gateway as a proxy, see [Connect a Deep Discovery Inspector appliance using Service Gateway as a proxy](./ddi-connect-service-gateway).

- To deploy a Deep Discovery Inspector appliance to AWS, see [Deploy a Deep Discovery Inspector virtual appliance on AWS](./deploying-ddi-appliance-aws).

After connecting your Deep Discovery Inspector appliance, review the following topics to further integrate your appliance with Trend Vision One services:

- [Enable Network Sensor](../../network-inventory/deep-discovery-inspector-appliances) to allow sharing network data with Trend Vision One detection and response apps such as [Workbench](../../../agentic-siem-xdr/workbench).

- Review the [sandbox options available](./sandbox-options-for-connected-deep-discovery-inspector-appliances) for sharing and analyzing suspicious objects with Suspicious Object Management and Sandbox Analysis.

- [Connect to a Service Gateway](./configuring-ddi-connections) to allow access to additional services.

**Related information**

- [Connect a Deep Discovery Inspector appliance directly](./connecting-ddi-directly "Connect a Deep Discover Inspector appliance using Network Inventory.")
- [Connect a Deep Discovery Inspector appliance using Service Gateway as a proxy](./ddi-connect-service-gateway "Connect a Deep Discover Inspector appliance using a Service Gateway as a proxy.")
- [Deploy a Deep Discovery Inspector virtual appliance on AWS](./deploying-ddi-appliance-aws "Learn how to connect a Deep Discovery Inspector virtual appliance deployed on AWS.")
- [Configure Deep Discovery Inspector connections](./configuring-ddi-connections "Manage how Deep Discovery Inspector appliances connect to Network Security and whether to leverage a Service Gateway as a service source.")
- [Sandbox options for connected Deep Discovery Inspector appliances](./sandbox-options-for-connected-deep-discovery-inspector-appliances "Review the options available for integrating and enabling analysis of suspicious files in a virtual sandbox for your Deep Discovery Inspector appliances.")
- [Activate a Deep Discovery Inspector license using the Customer Licensing Portal](./activate-ddi-clp "Activate your Deep Discovery Inspector license to connect to Network Security and integrate with Sandbox as a Service.")
