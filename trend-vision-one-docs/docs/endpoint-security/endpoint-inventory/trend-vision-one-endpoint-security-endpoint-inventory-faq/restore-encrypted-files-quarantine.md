---
slug: trend-vision-one-restore-encrypted-files-quarantine
sidebar_position: 4
title: How do I restore encrypted files from quarantine?
---

Restore files encrypted and quarantined by the Trend Vision One Endpoint Security agent.

:::danger[Warning]
Restoring an infected file can spread the virus/malware to other files and computers. Before restoring the file, isolate the infected endpoint and move important files on this endpoint to a backup location.
:::

How the Trend Vision One Endpoint Security agent handles the process of quarantining and encrypting malware files depends on the Protection Manager—Standard Endpoint Protection or Server & Workload Protection. "Sensor-only" Trend Vision One Endpoint Security agents do not quarantine malware.

For Trend Vision One Endpoint Security agents with **Standard Endpoint Protection**, the Group Manager (Trend Micro Apex One server) handles management of quarantined files. To restore quarantined files, see [Trend Success Portal: Restoring files that have been quarantined by Apex One](https://success.trendmicro.com/en-US/solution/KA-0013825).

For Trend Vision One Endpoint Security agents with **Server & Workload Protection**, your agents store quarantined files on the endpoint.

- To locate quarantined files, see [View identified malware](../../server-workload-protection/events-reports/about-server-workload-protection-event-logging/anti-malware-events/view-identified-malware).

- To create an exception and restore a file to its original location, see [Restore identified files](../../server-workload-protection/events-reports/about-server-workload-protection-event-logging/anti-malware-events/view-identified-malware/restore-identified-files).

- To download and decrypt a quarantined file locally, see [Manually restore identified files](../../server-workload-protection/events-reports/about-server-workload-protection-event-logging/anti-malware-events/view-identified-malware/manually-restore-identified-files).
