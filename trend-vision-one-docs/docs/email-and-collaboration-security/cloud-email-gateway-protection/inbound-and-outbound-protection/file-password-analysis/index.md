---
slug: trend-vision-one-file-password-analysis
sidebar_position: 1
title: File password analysis
---

By leveraging a combination of user-defined passwords and message content (subject, body and attachment names), Cloud Email Gateway Protection can heuristically extract or open password-protected files, namely, archive files and document files, in email messages to detect any malicious payload that may be embedded in those files.

You can add or import user-defined passwords to help Cloud Email Gateway Protection efficiently extract or open password-protected files for further scanning.

:::note
File password analysis is only applied for virus scan, and not for DLP or content filtering.
:::

Cloud Email Gateway Protection supports the following password-protected archive file types:

- 7z

- rar

- zip

- .alz

- .egg

Cloud Email Gateway Protection supports the following password-protected document file types:

- doc

- docx

- pdf

- pptx

- xls

- xlsx

**Related information**

- [Configuring file password analysis](./configuring-file-password-analysis)
- [Adding user-defined passwords](./adding-user-defined-passwords)
- [Importing user-defined passwords](./importing-user-defined-passwords)
