---
slug: trend-vision-one-configure-smb-domain-servers
title: Recommended practice to configure network file server access with domain controllers
---

To setup the access of remote file server via domain controllers, Trend Micro recommends a dedicated connector group for the file server applications. These applications can be latency sensitive and may experience performance degradation if the associated connectors provide access to other applications as well.

<figure>
<img src="./images/connect-network-file-servers-domain-control=6f633e89-4f34-45a7-b314-0f3f4374f64d.webp" alt="Configuring Access to Network File Servers using Domain controllers" />
</figure>

### Procedure {#procedure}

1.  Configure Kerberos on the Domain Controller:

    1.  Within Private Access, [define an application](add-internal-application-pac.md) within the application for Kerberos on the domain controller using wild card domains and ports.

    2.  [Create a secure access rule](creating-pac-rule.md) to provide access to the file servers for the appropriate groups users/groups.

2.  Configure the file server:

    1.  [Configure a different application](add-internal-application-pac.md) for the file server using wild card domains and ports.

    2.  [Create a secure access rule](creating-pac-rule.md) to provide access to the file servers for the appropriate groups users/groups.
