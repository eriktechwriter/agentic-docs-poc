---
slug: trend-vision-one-private-ai-service-llm-integration
sidebar_position: 1
title: Configure AI proxy for multiple LLMs
---

AI proxy is a reverse proxy that allows you to use multiple Large Language Model (LLM) services with different API protocols.

You may host an AI application service that interacts with several self-hosted and open LLMs, which have different protocols/models. You can add on-premises gateway as AI proxy between your private AI application and those multiple LLM profiles to secure your private AI application or LLMs you hosted by the AI service access rule with advanced content inspection.

AI proxy mode allows you to create and apply AI service access and rate limiting rules specifically for the protected private generative AI services. The on-premises gateway receives requests to your private generative AI service and can apply the advanced content filtering, prevent prompt injection, and stop potential denial-of-service attacks with [rate limiting rules](https://docs.trendmicro.com/en-us/documentation/article/trend-vision-one-managing-rate-limiting-rules). The inspected requests can be relayed to individual LLM services upon the given LLM profiles on that on-premises gateway, after LLM services returns responses to AI proxy where can apply content filtering again before it returns responses back to your private generative AI application, then to endpoints or end-user

You can set the access control based on the user by using the X-Authenticated-User option. By default, the X-Authenticated-User option is not enabled and an on-premises gateway in AI proxy mode can only apply IP-based AI service access rules.

To use this option, an X-Authenticated-User header needs to be inserted by a downstream app that is deployed in front of the on-premises gateway. The value of this X-Authenticated-User is the end-user's UPN info. This UPN must be associated with the user/group used to create the user-based AI service access rule. The format of header is:

``` pre
X-Authenticated-User: example@domain.com 
```

If this option is enabled, but the downstream app does not insert the header into the forwarding traffic, the on-premises gateway applies any user or IP-based AI service access rule for such traffic.

<figure>
<img src="./images/ai_proxy_arch=71a8576a-4080-4f1d-a41b-64c0ec341536.webp" />
</figure>

:::warning[Important]
- To enable AI proxy mode on an on-premises gateway, the corresponding Service Gateway and Internet Access On-Premises Gateway service must both be updated to the latest version.

- If you are using AI proxy mode to protect a generative AI service, you must configure the server receiving requests from endpoints to add endpoint IP addresses to the X-Forwarded-For field in the request header. Otherwise, the on-premises gateway is not able to identify endpoints and perform access control or rate limiting functions.
:::

## Create the LLM profiles {#create-the-llm-profiles}

Before you can add the AI proxy to your gateways, you need to create a profile for each LLM that you are going to interact with.

### Procedure {#procedure}

1.  Go to **Zero Trust Secure Access → Secure Access Configuration → Internet Access and AI Service Access Configuration** and either [deploy a new on-premises gateway](..) or click the edit icon (![](/images/modify_connector=d7163417-a1d8-4a5a-8e4b-a8babe128751.webp)) corresponding to an existing on-premises gateway.

2.  In the **Gateways** tab, select **AI proxy** from the **Settings** menu.

    The LLM profiles page opens.

3.  Click **Create profile**.

4.  Enter the name of the profile.

5.  Provide a description of the profile. Although not necessary, this can be useful, especially if you have several versions of the LLM.

6.  Select the LLM provider.

7.  Configure the settings for the LLM.

8.  Click **Save**.

9.  Repeat steps 3 to 8 for each profile that you want to add.

## Add the AI proxy to an on-premises gateway {#add-the-ai-proxy-to-an-on-premises-gateway}

Once you have created your LLM profiles, you can create your AI proxy and add it to the gateways.

### Procedure {#procedure-1}

1.  On the **Internet Access and AI Service Access Configuration → Gateways**, click the edit icon (![](/images/modify_connector=d7163417-a1d8-4a5a-8e4b-a8babe128751.webp)) for the gateway you want to use the AI proxy.

2.  In **Advanced Settings**, select **AI proxy** as the **Service mode**.

    The default HTTP listening port is 8088.

3.  If desired, enable HTTPS listening.

    The default HTTPS listening port is 8443.

    For HTTPS requests, choose to use the default SSL certificate or provide a custom certificate with private key and passphrase.

4.  Enter the **Protected app name**.

5.  If desired, you can use X-Authenticated Users.

    :::note
    This requires an AI Service rule. For more information, see [Creating an AI service access rule](../../../../../secure-access-rules/ai-service-access-rule).
    :::

6.  Click **Manage profiles**.

7.  Select the LLM profiles that you want to apply in the AI proxy.

8.  Click **Apply**.

9.  If desired, you can test the connectivity of the profiles by clicking the connectivity icon. However, the connectivity of the selected profiles, which have not been tested, is automatically tested when you click **Save**.

10. Click **Save**.

    The gateway is saved, and the Service mode is AI proxy.
