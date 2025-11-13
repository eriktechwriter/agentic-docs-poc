---
slug: trend-vision-one-actions-email-security
title: '"modify" actions'
---

"Modify" actions change the message or its attachments. The original sender will still receive the modified message, assuming that the message does not trigger other policy rules with "Intercept" actions.

:::note
Note that the "Modify" actions may destroy the existing DKIM signatures in email messages. If this occurs, the messages cannot pass DKIM verification by the downstream mail server.
:::

For more information about specific "Modify" actions, select from the following:

- **Clean cleanable Viruses, delete those that cannot be cleaned** Action

  See [Cleaning Cleanable Viruses](cleaning-cleanable-malware.md).

- **Delete matching attachments** Action

  See [Deleting matching attachments](deleting-matching-attachments.md).

- **Sanitize attachments** Action

  See [Sanitizing attachments](sanitizing-attachments.md).

- **Insert X-Header** Action

  See [Inserting an X-Header](inserting-x-header.md).

- **Insert stamp in body** Action

  See [Inserting a stamp](inserting-stamp.md).

- **Tag subject** Action

  See [Tagging the Subject Line](tagging-subject-line.md).

:::note
For digitally signed emails, the following "Modify" actions do not apply:

- Clean cleanable Viruses, delete those that cannot be cleaned

- Delete matching attachments

- Sanitize attachments
:::

**Related information**

- [Cleaning cleanable malware](cleaning-cleanable-malware.md)
- [Deleting matching attachments](deleting-matching-attachments.md)
- [Sanitizing attachments](sanitizing-attachments.md)
- [Inserting an X-Header](inserting-x-header.md)
- [Inserting a stamp](inserting-stamp.md)
- [Tagging the subject line](tagging-subject-line.md)
- [Tokens](tokens.md)
