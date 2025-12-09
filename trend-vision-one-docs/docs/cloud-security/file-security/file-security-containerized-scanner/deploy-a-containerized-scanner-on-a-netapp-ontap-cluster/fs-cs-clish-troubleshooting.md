---
slug: trend-vision-one-fs-cs-clish-troubleshooting
sidebar_position: 6
title: Troubleshooting
---

### Common Issues {#common-issues}

**Agent not found**:

``` codeblock
Error: agent 'demo-1' not found
```

- Verify the agent name with `clish agent show`

- Check if the agent was created successfully

**Token validation failed**:

- Generate new token with `clish agent onboarding-token issue`

- Ensure agent uses correct token for connection

**Credential update failed**:

- Verify agent is in connected state

- Check network connectivity between agent and management service

### Useful Commands for Debugging {#useful-commands-for-debugging}

**List all agents**:

``` codeblock
clish agent show
```

**Check specific agent status**:

``` codeblock
clish agent show --instance <agent-name>
```

**Verify scanner policy**:

``` codeblock
clish scanner scan-policy show
```
