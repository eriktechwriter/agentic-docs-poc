---
category: Cloud Security
change_date: 2025-10-23T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-322
title: Helm Chart 3.2.2
---

October 23, 2025 — The Helm Chart 3.2.2 release includes the following:

- **Enhancements**

  - Improved health status reporting in EKS Fargate clusters.

  - Improved handling of excluded namespaces, especially in malware scanning.

  - Updated open source packages.

- **Upgrade instructions**

  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.2.2.tar.gz
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.2.2>
