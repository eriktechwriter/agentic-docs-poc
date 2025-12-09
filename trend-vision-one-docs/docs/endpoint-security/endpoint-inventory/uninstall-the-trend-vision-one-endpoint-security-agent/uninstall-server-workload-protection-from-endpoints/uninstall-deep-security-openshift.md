---
slug: trend-vision-one-uninstall-deep-security-openshift
sidebar_position: 5
title: Manually uninstall the Deep Security agent from Red Hat OpenShift
---

Uninstall connected Deep Security agents from Red Hat OpenShift.

:::note
When uninstalling a Deep Security agent, the agent does not notify your Protection Managers when uninstalling. The affected endpoint appears on the **Computers** page with a status of "Managed (Offline)" or similar. To resolve the issue:

- Deactivate the agent before you uninstall Server & Workload Protection, or

- Delete the computer from the list after you uninstall Server & Workload Protection.
:::

The Trend Vision One Endpoint Security agent and Server & Workload Protection do not support deployments to Red Hat OpenShift at this time. However, depending on your environment, you might have Deep Security agents connected to your Protection Managers deployed to Red Hat OpenShift.

To manually remove the Deep Security agent, run the following command from terminal:

`helm uninstall ds-agent`
