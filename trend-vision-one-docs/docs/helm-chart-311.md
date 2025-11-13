---
category: Cloud Security
change_date: 2025-07-15T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-311
title: Helm Chart 3.1.1
---

July 15, 2025—The 3.1.1 Helm Chart release includes the following:

- **Bug fixes**

  - Fixed an issue in which runtime rules did not load in some environments.

- **Upgrade instructions**
  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.1.1.tar.gz 
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.1.1>
