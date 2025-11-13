---
slug: trend-vision-one-assigning-as-update-agents
title: Assigning Trend Vision One Endpoint Security agents as Update Agents
---

To assign agents as Update Agents, configure a policy with any of the Update Agent settings selected. Any agent assigned to the policy become Update Agents.

### Procedure {#procedure}

1.  To assign agents as Update Agents, go to **Policies → Policy Management** and select **Apex One Security Agent**.

2.  Click **Create** to create a new policy, or select a policy to modify.

    :::note
    Any endpoint assigned to a policy with at least one Update Agent setting selected becomes an Update Agent. Verify the targeted endpoints before modifying an existing policy.
    :::

3.  Go to **Agent Configurations → Update Agent**.

4.  Select the items that Update Agents can share.

    - Component updates

    - Domain settings

    - Security Agent programs and hot fixes

5.  Click **Save**.

    Endpoints assigned to the policy are now Update Agents you can configure other agents to use to download updates. To select an Update Agent, access the Trend Micro Apex One management server, and go to **Updates → Agents → Update Source**.
