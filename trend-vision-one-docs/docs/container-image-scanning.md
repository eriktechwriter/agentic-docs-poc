---
slug: trend-vision-one-container-image-scanning
title: Container Image Scanning
---

The Trend Micro Artifact Scanner (TMAS) performs pre-runtime scans on artifacts, enabling you to identify and fix issues before they reach the production environment. After TMAS is integrated into your continuous integration (CI) or continuous delivery (CD) pipeline, you can view the scan results of registry image artifacts for vulnerabilities, malware, and secrets in **Cloud Security → Container Security → Log → Container Image Scanning**. [Learn more about TMAS](artifact-scanner-tmas.md).

Only the following artifacts are displayed in Container Image Scanning:

- `registry`
- `docker`
- `podman`
- `docker-archive`
- `oci-archive`
- `oci-dir`
- `singularity`

The Container Security does not display `dir` and `file` artifacts.

:::note
TMAS scan results are deleted after 35 days.
:::

**Related information**

- [Trend Micro Artifact Scanner (TMAS)](artifact-scanner-tmas.md)
- [Trend Micro Artifact Scanner with AI Scanner](tmas-ai-scanner-2.md)
