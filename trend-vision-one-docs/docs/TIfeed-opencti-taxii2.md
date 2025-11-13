---
slug: trend-vision-one-TIfeed-opencti-taxii2
title: Add the Trend Threat Intelligence feed in OpenCTI using TAXII2 connectors
---

Integrate Trend Threat Intelligence feed content into [OpenCTI](https://docs.opencti.io/latest/) using the TAXII2 connector. This process uses the Trend Threat Intelligence feed API which supports the [TAXII 2.1 protocol](https://docs.oasis-open.org/cti/taxii/v2.1/os/taxii-v2.1-os.md) to connect to OpenCTI.

### Procedure {#procedure}

1.  Clone the [TAXII2 connector repository](https://github.com/OpenCTI-Platform/connectors/tree/master/external-import/taxii2).

2.  Configure environment variables in `docker-compose.yml`.

    <table>
    <thead style="text-align: left;">
    <tr>
    <th><p>Environmental variable</p></th>
    <th><p>Description</p></th>
    <th><p>Value</p></th>
    </tr>
    </thead>
    <tbody style="text-align: left;">
    <tr>
    <td><p><code>OPENCTI_URL</code></p></td>
    <td><p>URL of your target OpenCTI instance where the connector sends data</p></td>
    <td></td>
    </tr>
    <tr>
    <td><p><code>OPENCTI_TOKEN</code></p></td>
    <td><p>API token for authenticating the connector with OpenCTI</p></td>
    <td></td>
    </tr>
    <tr>
    <td><p><code>CONNECTOR_ID</code></p></td>
    <td><p>Generate a random UUID to identify this connector instance</p></td>
    <td><p>A random UUID</p></td>
    </tr>
    <tr>
    <td><p><code>TAXII2_DISCOVERY_URL</code></p></td>
    <td><p>URL of the TAXII 2.1 threat intelligence feed API</p></td>
    <td><p>Refer to the <a href="trend-vision-one-configure-taxii-TIfeed">regional TAXII feed URL table</a>.</p></td>
    </tr>
    <tr>
    <td><p><code>TAXII2_INITIAL_HISTORY</code></p></td>
    <td><p>Initial historical data fetch window in hours when starting the connector for the first time</p></td>
    <td><p>Default: 24</p></td>
    </tr>
    <tr>
    <td><p><code>TAXII2_USE_APIKEY</code></p></td>
    <td><p>Switch from using username and password to using a key/value pair as authentication method</p></td>
    <td><p><code>true</code></p></td>
    </tr>
    <tr>
    <td><p><code>TAXII2_APIKEY_KEY</code></p></td>
    <td><p>API key - name of the HTTP header</p></td>
    <td><p><code>Authorization</code></p></td>
    </tr>
    <tr>
    <td><p><code>TAXII2_APIKEY_VALUE</code></p></td>
    <td><p>The secret value set as the header value</p></td>
    <td><p>Your Trend Vision OneAPI token</p></td>
    </tr>
    </tbody>
    </table>

3.  To filter marking-definition objects during import, use the below environmental variables.

    - Set `TAXII2_IGNORE_OBJECT_TYPES` to `true` to exclude specific objects.

    - Specify `TAXII2_OBJECT_TYPES_TO_IGNORE` with a comma-separated list of STIX object types to ignore.

    OpenCTI uses [Traffic Light Protocol (TLP)](https://www.cisa.gov/news-events/news/traffic-light-protocol-tlp-definitions-and-usage), so TLP displays as expected.

4.  Run the following command to ingest the fetched data into OpenCTI through the TAXII2 connector.

    `$ docker-compose up`

5.  Monitor the import status in the OpenCTI web portal at **Data → Ingestion → Connectors → TAXII2**.

6.  To re-import data from the period defined by `TAXII2_INITIAL_HISTORY`, click **Reset** in the OpenCTI portal.

The following example shows an sample result of a STIX import.

``` codeblock
{
    "id": "indicator--6d67c97d-34b4-4aac-89d9-84232fb38946",
    "type": "indicator",
    "spec_version": "2.1",
    "created_by_ref": "identity--74f7eb0f-1ca3-491a-b4cf-f4d54c83c87d",
    "created": "2024-06-28T03:09:12.806Z",
    "modified": "2024-11-11T07:59:53.564Z",
    "name": "File SHA1: f17d9b3cd2ba1dea125d2e1a4aeafc6d4d8f12dc",
    "lang": "en",
    "pattern": "[file:hashes.'SHA-1' = 'f17d9b3cd2ba1dea125d2e1a4aeafc6d4d8f12dc']",
    "pattern_type": "stix",
    "pattern_version": "2.1",
    "valid_from": "2024-11-11T07:59:53.017Z",
    "valid_until": "2025-11-11T07:59:53.017Z",
    "object_marking_refs": [
        "marking-definition--ce6a3a69-be72-4e80-bfc1-4c6b44f23651",  // Copyright
        "marking-definition--05972cd1-d8ed-42f3-b104-7770c3787929",  // Disclaimer
        "marking-definition--f88d31f6-486f-44da-b317-01333bde0b82"   // TLP:AMBER
    ]
}
```
