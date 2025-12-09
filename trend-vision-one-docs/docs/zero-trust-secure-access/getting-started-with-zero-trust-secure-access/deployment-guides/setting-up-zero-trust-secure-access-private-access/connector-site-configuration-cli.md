---
slug: trend-vision-one-connector-site-configuration-cli
sidebar_position: 2
title: Connector Site Configuration Through the CLI
---

When you deploy a new Zero Trust Network Access (ZTNA) connector, the ZTNA cloud automatically detects the best ZTNA PoP based on factors including geographic region, proximity, and speed. Seamless operation requires that your network firewall accept all ZTNA-PA FQDNs. For more information, see [Port and FQDN/IP address requirements | Trend Micro Service Central](https://docs.trendmicro.com/en-us/documentation/article/trend-vision-one-port-fqdn-ip-address-requirements). Currently, the latest relay sites are excluded from automatic assignment. You leverage them by manual configuration.

**Sites that require manual configuration**

<table>
<thead style="text-align: left;">
<tr>
<th><p>PoP</p></th>
<th><p>Site identifier</p></th>
<th><p>Region/Location</p></th>
<th><p>Associated Trend Vision One Data Center</p></th>
</tr>
</thead>
<tbody style="text-align: left;">
<tr>
<td><p>Germany</p></td>
<td><p>de</p></td>
<td><p>Germany West Central</p></td>
<td><p>Europe</p></td>
</tr>
<tr>
<td><p>Spain</p></td>
<td><p>es</p></td>
<td><p>Spain Central</p></td>
<td><p>Europe</p></td>
</tr>
</tbody>
</table>

Before starting, review [Europe - Zero Trust Secure Access FQDNs/IP addresses | Trend Micro Service Central](https://docs.trendmicro.com/en-us/documentation/article/trend-vision-one-europe-ztsa-fqdns) to ensure that your firewall accepts the ports and FQDNs required by the site you wish to connect to (or the appropriate page for your region).

You require access to the connector CLI to configure the connector to point to these sites. You should have already configured an SSH key to access your VM when deploying the connector.

If you have not set up a connector or are creating a new one, see [Private Access Connector deployment | Trend Micro Service Central](https://docs.trendmicro.com/en-us/documentation/article/trend-vision-one-private-access-connector-deployment) for deployment instructions.

If you have logged into the connector before, you may have generated a password for enabling privileged mode. If not, log into the connector, and use the `passwd` command to set up a new privileged mode password. Save the password as you need it to register the connector with the new site.

### Generate a registration token {#generate-a-registration-token}

You need a new registration token from the Trend Vision One console for an ESXi platform. The instructions below were taken from [Deploy the Private Access Connector on VMware ESXi](./private-access-connector-deployment/deploy-pac-vmware-esxi).

1.  the Trend Vision One console, go to **Zero Trust Secure Access → Secure Access Configuration → Private Access Configuration**.

2.  Locate your Connector group name in the list and click the **New connector (+)** icon.

3.  Select **VMware ESXi** from the **Platform** list.

4.  Copy the **Registration token** for later use.

### Configure the connector {#configure-the-connector}

You now configure the connector. Note that the instructions below use Germany, "de", for the region. For Spain, replace "de" with "es". For more information on the commands, see [Private Access Connector CLI commands](./private-access-connector-deployment/private-access-connector-cli).

1.  SSH into the connector using the SSH key generated during its creation.

    ``` codeblock
    > ssh -i ~/.ssh/{your_key}.pem admin@{connector_ip}
    ```

    ::: {#concept_rwn_qbc_qgc__note_nqx_gpw_qgc .trouble}
    <table class="note-layout" data-border="0" data-cellspacing="0">
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <tbody>
    <tr>
    <td class="note-icon"><img src="/resources/trouble.webp" alt="Troubleshooting" /></td>
    <td class="note-text"><h5 id="troubleshooting">Troubleshooting</h5>
    <div class="note-body">
    <p>“Unable to connect or connection refused when SSH’ing to the connector.” Check that your <a href="https://whatismyipaddress.com/">IP</a> is allowed by the inbound rules for any network security group or firewall between you and the connector.</p>
    
    :::

    </td>
    </tr>
    </tbody>
    </table>
    :::

2.  Enter privileged mode with the newly configured password configured.

    ``` codeblock
    > enable
    Password: 

    Entering privileged mode...
    ```

3.  The connector should have been registered to another region during creation. You need to unregister the connector.

    ``` codeblock
    # unregister

    Successfully unregistered from Trend Micro Vision One. The connector is also deleted from the Trend Micro Vision One console.
    ```

4.  Change the preferred region to the site identifier of choice. We use ‘de’ for Germany in the example.

    ``` codeblock
    # configure region de

    Preferred region set to de
    ```

5.  Use the show command to check that the preferred region is properly configured.

    ``` codeblock
    # show region

    preferred: de
    detected: eu
    connected: None
    ```

6.  Register the connector to the ‘de’ site using the registration token from the V1 console.

    ``` codeblock
    # register {registration_token}

    Successfully registered to Trend Micro Vision One.
    ```

    ::: {#concept_rwn_qbc_qgc__note_yr3_tqw_qgc .trouble}
    <table class="note-layout" data-border="0" data-cellspacing="0">
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <tbody>
    <tr>
    <td class="note-icon"><img src="/resources/trouble.webp" alt="Troubleshooting" /></td>
    <td class="note-text"><h5 id="troubleshooting-1">Troubleshooting</h5>
    <div class="note-body">
    <p>“Invalid registration token.” Make sure to use a new registration token and choose <code>VMware ESXi</code> for the platform when generating the token.</p>
    
    :::

    </td>
    </tr>
    </tbody>
    </table>
    :::

7.  Use the show command to confirm that the connector is using the ‘de’ site.

    ``` codeblock
    # show region

    preferred: de
    detected: eu
    connected: de
    ```
