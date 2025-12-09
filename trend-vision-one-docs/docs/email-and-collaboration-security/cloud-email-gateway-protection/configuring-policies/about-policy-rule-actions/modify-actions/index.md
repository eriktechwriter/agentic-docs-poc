---
slug: trend-vision-one-actions-email-security
sidebar_position: 1
title: '"modify" actions'
---

"Modify" actions change the message or its attachments. The original sender will still receive the modified message, assuming that the message does not trigger other policy rules with "Intercept" actions.

:::note
Note that the "Modify" actions may destroy the existing DKIM signatures in email messages. If this occurs, the messages cannot pass DKIM verification by the downstream mail server.
:::

For more information about specific "Modify" actions, select from the following:

- **Clean cleanable Viruses, delete those that cannot be cleaned** Action

  See [Cleaning Cleanable Viruses](./cleaning-cleanable-malware).

- **Delete matching attachments** Action

  See [Deleting matching attachments](./deleting-matching-attachments).

- **Sanitize attachments** Action

  See [Sanitizing attachments](./sanitizing-attachments).

- **Insert X-Header** Action

  See [Inserting an X-Header](./inserting-x-header).

- **Insert stamp in body** Action

  See [Inserting a stamp](./inserting-a-stamp).

- **Tag subject** Action

  See [Tagging the Subject Line](./tagging-subject-line).

:::note
For digitally signed emails, the following "Modify" actions do not apply:

- Clean cleanable Viruses, delete those that cannot be cleaned

- Delete matching attachments

- Sanitize attachments
:::

**Related information**

- [Cleaning cleanable malware](./cleaning-cleanable-malware)
- [Deleting matching attachments](./deleting-matching-attachments)
- [Sanitizing attachments](./sanitizing-attachments)
- [Inserting an X-Header](./inserting-x-header)
- [Inserting a stamp](./inserting-a-stamp)
- [Tagging the subject line](./tagging-subject-line)
- [Tokens](./tokens)
