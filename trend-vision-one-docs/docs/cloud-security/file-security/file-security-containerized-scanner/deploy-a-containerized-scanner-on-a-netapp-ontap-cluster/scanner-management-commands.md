---
slug: trend-vision-one-scanner-management-commands
sidebar_position: 4
title: Scanner management commands
---

### Show scanner policy configuration {#show-scanner-policy-configuration}

``` codeblock
clish scanner scan-policy show
```

**Purpose**: Display current scanner policy configuration

``` codeblock
clish scanner scan-policy show
```

**Example Output**:

``` codeblock
Scan Policy
---------------------------
Max Decompress Layer Limit : 20
Max Decompress Ratio Limit : 60
Max Decompression File Count   : 1000
Max Decompression Size         : 100 MB
```

### Modify scanner scan-policy settings {#modify-scanner-scan-policy-settings}

``` codeblock
clish scanner scan-policy modify
```

**Purpose**: Update scanner policy settings

``` codeblock
clish scanner scan-policy modify [flags]
```

**Available Flags**

- `--max-decompress-layer <number>`: Maximum decompression layer limit

- `--max-decompression-ratio <number>`: Maximum decompression ratio limit

- `--max-decompression-file-count <number>`: Maximum number of files to decompress

- `--max-decompression-size <number>`: Maximum decompression size in MB

**Examples**:

**Update layer limit**:

``` codeblock
clish scanner scan-policy modify --max-decompress-layer 15
```

**Output**:

``` codeblock
Decompress layer limit set to: 15
```

**Update multiple settings**:

``` codeblock
clish scanner scan-policy modify \
  --max-decompress-layer 25 \
  --max-decompression-ratio 80 \
  --max-decompression-file-count 2000 \
  --max-decompression-size 200
```

**Example output**

``` codeblock
Decompress layer limit set to: 25
Decompress ratio limit set to: 80
Max decompression file count set to: 2000
Max decompression size set to: 200 MB
```
