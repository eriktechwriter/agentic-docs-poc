---
slug: trend-vision-one-pa-not-connect-ios-ipados
sidebar_position: 5
title: Private Access cannot connect to .local domains on iOS/iPadOS
---

iOS and iPadOS devices often cannot connect to `.local` domains due to how Apple handles Bonjour, Multicast DNS (mDNS), and DNS resolution for `.local` addresses.. Apple’s Bonjour protocol uses mDNS with the `.local` domain suffix to identify Bonjour-accessible devices. This behavior is defined in RFC 6762 and the IANA Special-Use Domain Names registry.

This affects apps like Safari, SSH clients, and network utilities.

If your organization uses the `.local` suffix for internal DNS, Apple devices may:

- Fail to resolve unicast DNS names.

- Experience issues binding to Active Directory domains.

When planning your internal network, Trend Micro recommends:

- Use a registered domain name for internal network configurations.

- If using an unregistered domain, avoid all IANA Special-Use domain names.

  :::note
  :::

  While `.home` and `.corp` are not currently designated as Special-Use, this status may change in the future.

If your internal network only uses a `.local` domain, consider one of these two solutions:

1.  Add UPN Suffixes in your Active Directory Domain Services (AD DS):

    - Register a new UPN suffix that matches your verified Microsoft 365 domain.
    - Update user accounts to use the new suffix (for example, `billa@domain.com`).
    - This enables proper synchronization and allows users to sign in with consistent credentials.

2.  Change the Primary Domain in your AD DS:

    - Replace `.local` with a verified domain like `domain.com`.
    - This is a more involved process and may require significant planning and effort.
