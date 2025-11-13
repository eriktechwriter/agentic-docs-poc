---
category: Cloud Security
change_date: 2025-09-16T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-317
title: Helm Chart 3.1.7
---

September 16, 2025—The Helm Chart 3.1.7 release includes the following:

- **Enhancements**

  - Improved support for OKE clusters.

  - Enhanced node selector and toleration flexibility for scan jobs.

- **Bug fixes**

  - Added workaround for existing soft lockup issue in the Azure Linux 2 kernel.

  - Improved handling of scan manager when malware or secret cron schedules were empty.

- **Upgrade instructions**

  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.1.7.tar.gz
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.1.7>
