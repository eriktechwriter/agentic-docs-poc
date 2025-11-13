---
slug: trend-vision-one-agent-management-commands
title: Agent management commands
---

### List all agents {#list-all-agents}

``` codeblock
clish agent show
```

**Purpose**: Displays the list of all registered agents or detailed information about a specific agent List All Agents clish agent show

``` codeblock
Agent Name  Hostname  State       Attrs             Version
----------  --------  ----------  ----------------  -------
demo-1      -         running     C:Y K:OK H:✓      v1.0.0
demo-2      -         onboarding  C:N K:MISS H:✓    v1.0.0
page 1/1
```

**Attributes Explanation:**

- `C:` Connection State (Y=Connected, N=Disconnected, ?=Unknown)
- `K:` Credential State (OK=Configured, MISS=Missing/Invalid, ?=Unknown)
- `H:` Health Status (✓=Healthy, ✗=Unhealthy, ?=Unknown)

**Show specific agent details:**

``` codeblock
clish agent show --instance <agent-name>
```

**Example**:

``` codeblock
clish agent show --instance demo-1
```

**Example Output**:

``` codeblock
Agent Name       : demo-1
Agent ID         : f461e289-c396-4f5b-8119-bea0a697d513
Device Hostname  : -
State            : running
Health           : healthy
ONTAP Connected  : connected
Credential       : configured
Log Level        : info
Quarantine       : disabled
Agent Version    : v1.0.0
Last Seen        : -
Reason           : -
```

**Available Flags**:

- `--instance <name>`: Show details for specific agent

- `--page <number>`: Page number for agent list (default: 1)

### Create an agent instance {#create-an-agent-instance}

``` codeblock
clish agent create
```

**Purpose**: Create a new agent instance

``` codeblock
clish agent create --name <agent-name>
```

**Example**:

``` codeblock
clish agent create --name demo-3
```

**Example Output**:

``` codeblock
Agent 'demo03' created successfully with ID: f461e289-c396-4f5b-8119-bea0a697d513
```

**Requirements**:

- Agent name must match pattern: `^[a-zA-Z0-9_-]{1,20}$`. This mean that it must less then 20 characters, and contain only alpha-numeric characters and the following special characters: ^\[\]-\_{}$

- Name must be unique across all agents

### Create an onboarding token {#create-an-onboarding-token}

``` codeblock
clish agent onboarding-token issue
```

**Purpose**: Generate an onboarding token for agent registration

``` codeblock
clish agent onboarding-token issue --instance <agent-name>
```

**Example**:

``` codeblock
clish agent onboarding-token issue --instance demo-1
```

**Example Output**:

``` codeblock
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fweJf36POk6yJV_adQssw5c
```

**Usage Notes**

- Token is required for agent initial connection

- Token has limited validity period

- Agent must use this token for WebSocket connection establishment

### Update ONTAP SVM credentials {#update-ontap-svm-credentials}

``` codeblock
clish agent credential modify
```

**Purpose**: Update ONTAP SVM credentials for an agent

``` codeblock
clish agent credential modify --instance <agent-name>
```

**Example**:

``` codeblock
clish agent credential modify --instance demo-1
# Interactive prompts: 
# username: admin 
# password: [hidden input]
```

**Example Output**:

``` codeblock
Credentials updated successfully
```

**Security Notes**

- Password input is hidden during entry

- Credentials are stored in Kubernetes Secrets

- Only affects the specified agent instanc

### Display agent log levels {#display-agent-log-levels}

``` codeblock
clish agent loglevel show
```

**Purpose**: Display current log level for an agent

``` codeblock
clish agent loglevel show --instance <agent-name>
```

**Example**:

``` codeblock
clish agent loglevel show --instance demo-1
```

**Example Output**:

``` codeblock
Log Level for demo-1 : info
```

### Modify agent log level {#modify-agent-log-level}

``` codeblock
clish agent loglevel modify
```

**Purpose**: Change log level for an agent

``` codeblock
clish agent loglevel modify --instance <agent-name> --loglevel <level>
```

**Example**:

``` codeblock
clish agent loglevel modify --instance demo-1 --loglevel debug
```

**Example Output**:

``` codeblock
Log level for demo-1 set to debug
```

**Available Log Levels**

- `info`: Standard operational logging

- `warning`: Warning and error messages only

- `error`: Error messages only

### Display quarantine settings {#display-quarantine-settings}

``` codeblock
clish agent quarantine show
```

**Purpose**: Display quarantine settings for an agent

``` codeblock
clish agent quarantine show --instance <agent-name>
```

**Example**:

``` codeblock
clish agent quarantine show --instance demo-1
```

**Example Output**:

``` codeblock
Quarantine for demo-1 : disabled
```

### Modify quarantine functionality {#modify-quarantine-functionality}

``` codeblock
clish agent quarantine modify
```

**Purpose**: Enable or disable quarantine functionality for an agent

``` codeblock
clish agent quarantine modify --instance <agent-name> --enabled <true|false>
```

**Examples**:

``` codeblock
# Enable quarantine
clish agent quarantine modify --instance demo-1 --enabled true

# Disable quarantine  
clish agent quarantine modify --instance demo-1 --enabled false
```

**Example Output**:

``` codeblock
Quarantine for demo-1 set to enabled
```
