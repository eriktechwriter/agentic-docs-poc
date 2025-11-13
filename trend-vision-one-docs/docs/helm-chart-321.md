---
category: Cloud Security
change_date: 2025-10-10T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-321
title: Helm Chart 3.2.1
---

- **Enhancements**

  - Improved custom rule detection with mitigation action.

- **Bug fixes**

  - Resolved an issue that caused source rule file metadata to be missing from the OCI repository on the custom ruleset detail page.

- **Upgrade instructions**

  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.2.1.tar.gz
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.2.1>
