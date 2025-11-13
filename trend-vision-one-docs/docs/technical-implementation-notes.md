---
slug: trend-vision-one-technical-implementation-notes
title: Technical implementation notes
---

### Command Structure {#command-structure}

All commands follow the pattern:

``` codeblock
clish <category> <subcategory> <action> [flags]
```

**Categories**:

- `agent`: Agent management operations

- `scanner`: Scanner policy operations

**Agent States**

- **init**: Agent created but not yet connected

- **onboarding**: Agent connecting for the first time

- **running**: Agent actively connected and operational

- **disconnected**: Agent temporarily offline

**Configuration Persistence**

- Agent configurations are stored in Kubernetes ConfigMaps

- Credentials are stored in Kubernetes Secrets

- Changes are applied immediately to connected agents

- Disconnected agents receive updates upon reconnection

**Auto-completion Support**

The CLI supports tab completion for:

- Agent instance names

- Log levels

- Command flags

- Subcommands
