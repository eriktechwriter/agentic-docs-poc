---
slug: trend-vision-one-configuring-web-reputation-macOS
sidebar_position: 2
title: Configuring Web Reputation Settings
---

Configure the Web Reputation settings for macOS agents in your Standard Endpoint Protection policies.

Web Reputation settings include policies that dictate whether Standard Endpoint Protection blocks or allows access to a website. To determine the appropriate policy to use, Standard Endpoint Protection checks the location of the Trend Vision One Endpoint Security agent. The location of a Trend Vision One Endpoint Security agent is "internal" if the Trend Vision One Endpoint Security agent can connect to the Standard Endpoint Protection group manager server (Trend Micro Apex One (Mac) server). Otherwise, the location for the Trend Vision One Endpoint Security agent is "external."

### Procedure {#procedure}

1.  In the Trend Vision One console, go to **Endpoint Security → Standard Endpoint Protection**.

    If you have more than one Standard Endpoint Protection instance, navigate to the Protection Manager that manages the policy you want to configure.

2.  Go to **Policies → Policy Management** and select **Apex One (Mac)** for the **Product**.

3.  Select a policy to edit, or click **Create** to create a new policy.

4.  In the **Create Policy** screen, go to **Advanced Threat Protection → Web Reputation**.

5.  To configure a policy for external Trend Vision One Endpoint Security agents:

    1.  Click the **External Agents** tab.

    2.  Select **Enable Web Reputation policy**.

        When the policy is enabled, external Trend Vision One Endpoint Security agents send web reputation queries to the Smart Protection Network.

        :::note
        If an agent only has an IPv6 address, read the IPv6 limitations for Web Reputation queries in [Pure IPv6 Agent Limitations](../../agent-configurations/update-settings/pure-ipv6-agent-limitations).
        :::

    3.  Select from the available web reputation security levels: **High**, **Medium** or **Low**

        :::note
        The security levels determine whether Apex One (Mac) will allow or block access to a URL. For example, if you set the security level to Low, Apex One (Mac) only blocks URLs that are known to be web threats. As you set the security level higher, the web threat detection rate improves but the possibility of false positives also increases.
        :::

    4.  To submit web reputation feedback, click the URL provided. The Trend Micro Web Reputation Query system opens in a browser window.

6.  To configure a policy for internal Trend Vision One Endpoint Security agents:

    1.  Click the **Internal Agents** tab.

    2.  Select **Enable Web Reputation policy**.

        When the policy is enabled, internal Trend Vision One Endpoint Security agents send web reputation queries to:

        - Smart Protection Servers if the **Send queries to Smart Protection Servers** option is enabled.

        - Smart Protection Network if the **Send queries to Smart Protection Servers** option is disabled.

        :::note
        If an agent only has an IPv6 address, read the IPv6 limitations for Web Reputation queries in [Pure IPv6 Agent Limitations](../../agent-configurations/update-settings/pure-ipv6-agent-limitations).
        :::

    3.  Select **Send queries to Smart Protection Servers** if you want internal Trend Vision One Endpoint Security agents to send web reputation queries to Smart Protection Servers.

        - If you enable this option, Trend Vision One Endpoint Security agents refer to the same smart protection source list used by Apex One Trend Vision One Endpoint Security agents to determine the Smart Protection Servers to which they send queries.

        - If you disable this option, Trend Vision One Endpoint Security agents send web reputation queries to Smart Protection Network. Endpoints must have Internet connection to send queries successfully.

    4.  Select from the available web reputation security levels: **High**, **Medium** or **Low**

        :::note
        The security levels determine whether Apex One (Mac) will allow or block access to a URL. For example, if you set the security level to Low, Apex One (Mac) only blocks URLs that are known to be web threats. As you set the security level higher, the web threat detection rate improves but the possibility of false positives also increases.

        Trend Vision One Endpoint Security agents do not block untested websites, regardless of the security level.
        :::

    5.  To submit web reputation feedback, click the URL provided. The Trend Micro Web Reputation Query system opens in a browser window.

    6.  Select whether to allow the Trend Vision One Endpoint Security agents to send web reputation logs to the server. Allow Trend Vision One Endpoint Security agents to send logs if you want to analyze URLs being blocked by Apex One (Mac) and take the appropriate action on URLs you think are safe to access.
