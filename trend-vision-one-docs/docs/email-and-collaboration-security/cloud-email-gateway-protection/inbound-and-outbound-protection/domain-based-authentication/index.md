---
slug: trend-vision-one-domain-based-authentication
sidebar_position: 1
title: Domain-based authentication
---

Cloud Email Gateway Protection provides authentication methods such as Sender IP Match, Sender Policy Framework (SPF), DomainKeys Identified Mail (DKIM) verification, and Domain-based Message Authentication, Reporting & Conformance (DMARC) to protect against email spoofing.

If all these methods are enabled, Cloud Email Gateway Protection evaluates email messages in the following order:

1.  Sender IP Match

2.  SPF check

3.  DKIM verification

4.  DMARC authentication

Cloud Email Gateway Protection keeps evaluating and scanning an email message in the preceding order until encountering an "Intercept" action. If an email message passes the Sender IP Match check, Cloud Email Gateway Protection skips its own SPF check as well as the SPF check of DMARC authentication for this message.

:::note
For details about intercept actions, see [intercept actions](../../configuring-policies/about-policy-rule-actions/intercept-actions).
:::

**Related information**

- [Sender IP match](./sender-ip-match)
- [Sender policy framework (SPF)](./sender-policy-framework-spf)
- [Domainkeys identified mail (DKIM)](./domainkeys-identified-mail-dkim)
- [Domain-based message authentication, reporting & conformance (DMARC)](./domain-based-message-authentication-reporting-conformance-dmarc)
- [How DMARC works with SPF and DKIM](./how-dmarc-works-spf-dkim)
