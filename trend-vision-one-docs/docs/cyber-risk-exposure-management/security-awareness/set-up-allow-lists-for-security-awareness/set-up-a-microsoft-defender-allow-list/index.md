---
slug: trend-vision-one-setup-365-defender-allow-list
sidebar_position: 1
title: Set up a Microsoft Defender allow list
---

Configure the allow list settings for Microsoft Defender to ensure the delivery of Security Awareness Training training campaign invitations and reminders, and simulated phishing emails to employees in your organization.

### Procedure {#procedure}

1.  Record the **Security Awareness** sending domains and IP addresses.

    1.  On the Trend Vision One console, go to **Cyber Risk Exposure Management → Security Awareness → Phishing Simulations**.

    2.  Click **Settings**.

    3.  Click **Settings** and copy the sending domains and IP addresses.

2.  Configure Microsoft Defender to allow training campaign invitations and reminders, and phishing simulation emails from **Security Awareness**.

    :::warning[Important]
    The following instructions were valid as of July 15, 2024. For further help, refer to the Microsoft Defender documentation.
    :::

    1.  Sign in to the Microsoft Defender portal using an administrator account.

    2.  In the **Email & collaboration** section of the Microsoft Defender portal, go to **Policies & Rules → Rules → Advanced delivery**.

    3.  Click the **Phishing simulation** tab.

    4.  Configure your phishing simulations.

        - If you have not previously configured a phishing simulation, click **Add**.

        - If you have already configured a phishing simulation, click **Edit**.

    5.  In the **Add third party phishing simulations** screen, enter your sending domains and sending IP addresses in the respective fields.

    6.  Click **Add**.

    7.  Click **Close**.

    You have configured Microsoft Defender to allow employees in your organization to receive training campaign invitations, reminders, and phishing simulation emails from **Security Awareness**.

**Related information**

- [Avoid Microsoft Safe Links alerts when opening phishing simulation landing pages](./disable-safe-links "Ensure recipients can open phishing simulation URLs without encountering a Microsoft Safe Links alert.")
