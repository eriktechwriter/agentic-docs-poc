---
category: Cloud Security
change_date: 2025-09-29T00:00:00Z
is_what_new: true
slug: trend-vision-one-helm-chart-318
title: Helm Chart 3.1.8
---

September 29, 2025 — The Helm Chart 3.1.8 release includes the following:

- **Enhancements**

  - Added node-level compliance checks for master nodes to ensure alignment with Kubernetes and OpenShift standards.

  - Enhanced deployment log visibility by including signature verification rule evaluation events, along with detailed evaluation reasons, for both frontend and public API deployments.

- **Bug fixes**

  - Resolved an issue with scan manager schedule logging.

- **Upgrade instructions**

  - Sample upgrade command:

    ``` codeblock
    helm upgrade \
    --values overrides.yaml \
    --namespace trendmicro-system \
    trendmicro \
    https://github.com/trendmicro/visionone-container-security-helm/archive/3.1.8.tar.gz
    ```

- **References**

  - <https://github.com/trendmicro/visionone-container-security-helm/releases/tag/3.1.8>
