---
slug: trend-vision-one-tmas-ai-scanner-2
title: Trend Micro Artifact Scanner with AI Scanner
---

The Trend Micro Artifact Scanner (TMAS) includes AI scan capabilities. This allows you to use TMAS to identify security vulnerabilities in your AI applications and find risks relating to the [OWASP Top 10 for Large Language Model Applications](https://owasp.org/www-project-top-10-for-large-language-model-applications/) and [MITRE Adversarial Threat Landscape for Artificial-Intelligence Systems (ATLAS)](https://atlas.mitre.org/). You can run AI Scanner locally or hosted by Trend Micro.

The scanner can find vulnerabilities in the following:

- OpenAI LLM endpoints (<https://platform.openai.com/docs/api-reference/introduction>)

- Custom AI applications

The scanner can find vulnerabilities relating to:

- Sensitive data disclosure
- System prompt leakage
- Malicious code generation
- Hallucinated software entities
- Agent tool definition leakage

For information on configuring TMAS with AI Scanner, see [Configure AI scan settings](configure-ai-scanner-scan-settings.md).

After integrating TMAS with AI Scanner into your continuous integration / continuous deployment (CI/CD) pipeline, you can [view the results](ai-scanner-scan-results.md) in **Security for AI Stack → AI Scanner and AI Guard**.
