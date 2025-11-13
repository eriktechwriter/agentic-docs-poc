---
slug: trend-vision-one-check-chromeos-devices
title: Check ChromeOS devices
---

You need to check that:

- The device is running the following OS version or later

  Check whether the device is running on the required operating system version. If the option is enabled, select a minimum version number of the corresponding operating systems. A device installed with the specified version or later passes the check.

- The company CA certificate is present in the Trust Store

  Check the certificates installed on ChromeOS devices. A device installed with the specified certificate passes the check. For more information on certificates, see[Device posture certificate requirements](device-posture-certificatets.md) .

  To check the certificates installed on an ChromeOS device:

  - Open the Chrome app and enter `chrome://certificate-manager/localcerts/admincerts` in the address bar.

- The client certificate is signed by company's CA

  Check the certificates installed on ChromeOS devices. A device installed with the specified certificate passes the check. For more information on certificates, see .[Device posture certificate requirements](device-posture-certificatets.md)

  To check the certificates installed on an ChromeOS device:

  - Open the Chrome app and enter `chrome://certificate-manager/localcerts/admincerts` in the address bar.

- The Trend Micro Mobile Security detected device risk level is correct

  Check whether the device is in the specified risk level state. If this option is enabled, select a minimum acceptable risk level. A device with the specified risk level or lower passes the check. For more information, see [Devices Tab](devices-tab.md).

:::note
If the Device Posture Check requires certificate verification (The company CA certificate is present in the Trust Store; the client certificate is signed by company's CA), you need to enable certificate synchronization; otherwise, it will not be possible to check if the certificate is installed on the system. For more information, see [Deploy Android apps to managed users on ChromeOS devices - Chrome Enterprise and Education Help](https://support.google.com/chrome/a/answer/7131624)
:::

To synchronize Google ChromeOS CA certificates available to Android apps:

1.  Click **Certificate synchronization**.

2.  Select **Enable usage of ChromeOS CA certificates in Android apps**.

3.  Click **Save**.
