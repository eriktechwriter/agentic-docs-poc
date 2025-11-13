---
slug: trend-vision-one-configure-ai-scanner-scan-settings
title: Configure AI scan settings
---

Specify a target AI model and select the attack objective, technique, and modifier to scan for in the command line interface (CLI).

### Procedure {#procedure}

1.  Create an application programming interface (API) key for your AI model.

    1.  Go to **Administration → API Keys**.

    2.  Click **Add API Key** to create a new API key.

    3.  Specify a name, user role, and expiration time for the API key.

        :::warning[Important]
        When adding the API key, you must select a **Role** with permission to run scans in AI Scanner. If your organization does not have an existing user role with the necessary permissions, create a [custom role](custom-user-roles-trend-vision-one.md) or contact your administrator.
        :::

        For more information, see [API Keys](platform-api-keys.md).

    4.  Click **Add**.

    5.  Copy and retain the API key.

2.  Download and install the [Trend Micro Artifact Scanner CLI](integrating-tmas-ci-cd-pipeline.md).

3.  Configure the scan settings in the CLI.

    1.  Open the Trend Micro Artifact Scanner CLI.

    2.  Follow the instructions to paste in the target API endpoint and the new API key.

    3.  To host the scan locally, add `--judgeEndpoint` before the endpoint's URL in the CLI. Self-hosted is only available with Amazon Web Services (AWS).

        ``` codeblock
        tmas --judgeEndpoint http://localhost:your_port
        ```

    4.  Type the name of the target LLM for the scan.

    5.  Select one or more attack objectives, techniques, and modifiers from the provided options.

    6.  Click **Yes** to save the scan configuration and specify a file name.

    7.  When the scan completes, go back to AI Scanner to view the full results.

4.  View the results of the scan in AI Scanner.

    For more information on the results available in AI Scanner, see [AI Scanner scan results](ai-scanner-scan-results.md).
