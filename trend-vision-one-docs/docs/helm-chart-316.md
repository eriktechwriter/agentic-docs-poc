---
category: Cloud Security
change_date: 2025-08-27T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-316
title: Helm Chart 3.1.6
---

August 27, 2025 — The Helm Chart 3.1.6 release includes the following:

- **Enhancements**

  - This release enhances the Workload Operator component to be idempotent.

- **Upgrade instructions**

  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.1.6.tar.gz
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.1.6>
