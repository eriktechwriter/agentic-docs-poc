---
category: Cloud Security
change_date: 2025-10-06T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-320
title: Helm Chart 3.2.0
---

October 6, 2025 — The Helm Chart 3.2.0 release includes the following:

- **Features**

  - Introduces support for custom rules in Container Security Runtime Security. You can now create, configure, and import your own rules to tailor runtime protection to your specific environment. This feature enables custom exclusions and granular filtering, allowing you to detect events of interest with greater precision. It extends coverage beyond managed rules, providing personalized and adaptable protection.

- **Enhancements**

  - Improved compliance scanning to ensure integrity of check files by preventing unauthorized modifications.

  - Upgraded to the latest malware-scanning image for improved detection capabilities and performance.

- **Upgrade instructions**

  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.2.0.tar.gz
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.2.0>
