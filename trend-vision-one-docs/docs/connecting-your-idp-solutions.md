---
slug: trend-vision-one-connecting-your-idp-solutions
title: Connect your IdP solutions
---

Trend Vision One uses Identity Provider (IdP) solutions to support seamless, SAML-based, single sign-on (SSO) using your corporate account credentials.

An IdP is required to create SAML accounts. From the Identity Providers page, you can create multiple IdPs. Follow these steps to create IdPs for your accounts.

### Procedure {#procedure}

1.  On the Trend Vision One console, go to **Administration → Identity Providers**.

2.  Click **Download the metadata XML**.

    The Trend Vision One Service Provider metadata XML file downloads to your computer.

3.  Configure your Identity Provider (IdP) and download the IdP metadata XML file.

    For more information, see the topic below for your IdP.

    - [Configure Active Directory Federation Services](configuring-adfs.md)

    - [Configure Microsoft Entra ID](configuring-saml-ad.md)

    - [Configure Okta](configuring-okta-saml.md)

    - [Configure Google Cloud Identity](config-google-cloud-saml.md)

4.  On the Trend Vision One console, go back to **Administration → Identity Providers**.

5.  Click **Add Identity Provider**.

6.  Enter a name and description for the IdP, then upload the metadata XML file that you edited.

7.  After the file successfully uploads, click **Save**.

    Click **Add SAML Users** to go to the User Accounts page to add SAML accounts in Trend Vision One.

    For more information, see [Configure accounts](configure-vision-accounts.md).
