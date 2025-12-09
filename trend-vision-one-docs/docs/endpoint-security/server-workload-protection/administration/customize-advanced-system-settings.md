---
slug: trend-vision-one-customize-advanced-system-settings
sidebar_position: 3
title: Customize advanced system settings
---

Several features for advanced users are located on **Administration → System Settings → Advanced**.

:::tip
You can automate system setting changes using the Server & Workload Protection API. For examples, see [Configure Policy, Computer, and System Settings](./automate/automate-using-the-api-and-sdk/sdk-guides/deploy-server-workload-protection/configure-server-workload-protection-system-settings/configure-system-settings).
:::

### Export {#export}

*Export file character encoding:* The character encoding used when you export data files from Server & Workload Protection. The encoding must support characters in your chosen language.

*Exported Diagnostics Package Language:* Your support provider may ask you generate and send them a Server & Workload Protection diagnostics package. This setting specifies the language the package will be in. The diagnostic package is generated on **Administration → System Information**.

### Manager AWS Identity {#manager-aws-identity}

You can configure cross-account access. Select either:

- *Use Manager Instance Role:* The more secure option to configure cross-account access. Attach a policy with the sts:AssumeRole permission to the Server & Workload Protection instance role, then select this option. Does not appear if Server & Workload Protection does not have an instance role.
- *Use AWS Access Keys:* Create the keys and attach a policy with the sts:AssumeRole permission before you select this option, and then type the *Access Key* and *Secret Key*.

### Application control {#application-control}

Each time you create an [Application Control](../configure-protection-modules/configuring-application-control/about-application-control/application-control) ruleset or change it, it must be distributed to all computers that use it. Shared rulesets are bigger than local rulesets. Shared rulesets are also often applied to many servers. If they all downloaded the ruleset directly from the manager at the same time, high load could cause slower performance. Global rulesets have the same considerations.

Using relays can solve this problem. (For information on configuring relays, see [Distribute security and software updates with relays](./configure-relays/deploy-more-relays/deploy-more-relays).)

To use this option, create a [relay group](./configure-relays/deploy-more-relays/deploy-more-relays), then go to **Administration → System Settings → Advanced** and select *Serve Application Control rulesets from relays*.

:::danger[Warning]
Verify compatibility with your deployment before using relays. If the agent doesn't have any previously downloaded rulesets currently in effect, and *if it doesn't receive new Application Control rules, then the computer won't be protected by Application Control.* If an Application Control ruleset fails to download, a [ruleset download failure event will be recorded on the manager](../events-reports/about-server-workload-protection-event-logging/system-events) and [on the agent](../events-reports/about-server-workload-protection-event-logging/application-control-events).
:::
