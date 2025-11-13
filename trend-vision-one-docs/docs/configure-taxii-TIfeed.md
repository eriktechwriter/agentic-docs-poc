---
slug: trend-vision-one-configure-taxii-TIfeed
title: Configure TAXII for the Trend Threat Intelligence feed
---

The Trend Threat Intelligence feed delivers real-time threat intelligence using a [TAXII 2.1-compliant](https://docs.oasis-open.org/cti/taxii/v2.1/os/taxii-v2.1-os.md) Representational State Transfer (REST) application programming interface (API). This API enables integration of curated, structured threat data into your security workflows and tools.

### Procedure {#procedure}

1.  Ensure you have a Trend Vision One API token. See [Set up the API for Trend Threat Intelligence Feed](api-for-threat-intelligence-feed.md).

2.  Identify your regional TAXII 2.1 discovery URL.

    <table>
    <colgroup>
    <col style="width: 25%" />
    <col style="width: 75%" />
    </colgroup>
    <thead style="text-align: left;">
    <tr>
    <th style="text-align: left;"><p>Region</p></th>
    <th style="text-align: left;"><p>TAXII feed URL</p></th>
    </tr>
    </thead>
    <tbody style="text-align: left;">
    <tr>
    <td style="text-align: left;"><p>United States</p></td>
    <td style="text-align: left;"><p>https://api.xdr.trendmicro.com/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>European Union</p></td>
    <td style="text-align: left;"><p>https://api.xdr.trendmicro.com/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Singapore</p></td>
    <td style="text-align: left;"><p>https://api.sg.xdr.trendmicro.com/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Japan</p></td>
    <td style="text-align: left;"><p>https://api.xdr.trendmicro.co.jp/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Australia</p></td>
    <td style="text-align: left;"><p>https://api.au.xdr.trendmicro.com/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>India</p></td>
    <td style="text-align: left;"><p>https://api.in.xdr.trendmicro.com/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>United Arab Emirates</p></td>
    <td style="text-align: left;"><p>https://api.mea.xdr.trendmicro.com/v3.0/threatintel/feeds/taxii2</p></td>
    </tr>
    </tbody>
    </table>

3.  Ensure requests include these required headers:

    - `Authorization: Bearer <yourvisiononeapitoken>`

    - `Accept: application/taxii+json; version=2.1`

4.  Query server and API root endpoints using the regional TAXII 2.1 URL table above. The collection ID targets a specific threat data object.

    - `GET <TAXII_DISCOVERY_URL>`

    - Retrieve API root information: `GET <TAXII_DISCOVERY_URL>/api/collections`

    - List collections: `GET <TAXII_DISCOVERY_URL>/api/collections`

    <table>
    <thead style="text-align: left;">
    <tr>
    <th style="text-align: left;"><p>Purpose</p></th>
    <th style="text-align: left;"><p>API path</p></th>
    <th style="text-align: left;"><p>URL parameters</p></th>
    <th style="text-align: left;"><p>Data type</p></th>
    <th style="text-align: left;"><p>Parameter description</p></th>
    </tr>
    </thead>
    <tbody style="text-align: left;">
    <tr>
    <td style="text-align: left;"><p>Server discovery</p></td>
    <td style="text-align: left;"><p><code>GET /taxii2/</code></p></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Get API root information</p></td>
    <td style="text-align: left;"><p><code>GET /taxii2/api/</code></p></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Get collections</p></td>
    <td style="text-align: left;"><p><code>GET /taxii2/api/collections/</code></p></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Get a collection</p></td>
    <td style="text-align: left;"><p><code>GET /taxii2/api/collections/91a7b528-80eb-42ed-a74d-c6fbd5a26116</code></p></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    <td style="text-align: left;"></td>
    </tr>
    <tr>
    <td rowspan="5" style="text-align: left;"><p>Get <a href="https://oasis-open.github.io/cti-documentation/stix/intro">STIX</a> objects</p></td>
    <td rowspan="5" style="text-align: left;"><p><code>GET /taxii2/api/collections/91a7b528-80eb-42ed-a74d-c6fbd5a26116/objects/</code></p></td>
    <td style="text-align: left;"><p>added_after</p></td>
    <td style="text-align: left;"><p>String, <a href="https://www.iso.org/iso-8601-date-and-time-format">ISO8601</a> timestamp</p></td>
    <td style="text-align: left;"><p>Only return objects with <code>date_added</code> greater than the specified value</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>limit</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Number of objects per page</p>
    <p>Default: 1,000</p>
    <p>Min: 1,000</p>
    <p>Max: 10,000</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>match[id]</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Filter by specific object ID</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>match[type]</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Filter by object type</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>next</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Pagination token to retrieve the next page of results</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>Get a STIX object</p></td>
    <td style="text-align: left;"><p><code>GET /taxii2/api/collections/91a7b528-80eb-42ed-a74d-c6fbd5a26116/objects/{object_id}</code></p></td>
    <td style="text-align: left;"><p>added_after</p></td>
    <td style="text-align: left;"><p>String, <a href="https://www.iso.org/iso-8601-date-and-time-format">ISO8601</a> timestamp</p></td>
    <td style="text-align: left;"><p>Only return objects with <code>date_added</code> greater than the specified value</p></td>
    </tr>
    <tr>
    <td rowspan="5" style="text-align: left;"><p>Get object manifests</p></td>
    <td rowspan="5" style="text-align: left;"><p><code>GET /taxii2/api/collections/91a7b528-80eb-42ed-a74d-c6fbd5a26116/manifest/</code></p></td>
    <td style="text-align: left;"><p>added_after</p></td>
    <td style="text-align: left;"><p>String, <a href="https://www.iso.org/iso-8601-date-and-time-format">ISO8601</a> timestamp</p></td>
    <td style="text-align: left;"><p>Only return objects with <code>date_added</code> greater than the specified value</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>limit</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Number of objects per page</p>
    <p>Default: 1,000</p>
    <p>Min: 1,000</p>
    <p>Max: 10,000</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>match[id]</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Filter by specific object ID</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>match[type]</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Filter by object type</p></td>
    </tr>
    <tr>
    <td style="text-align: left;"><p>next</p></td>
    <td style="text-align: left;"><p>String</p></td>
    <td style="text-align: left;"><p>Pagination token to retrieve the next page of results</p></td>
    </tr>
    </tbody>
    </table>

5.  Refer to the below [Python](https://www.python.org/) example to authenticate and count objects.

    Packages:

    - [taxii2-client](https://pypi.org/project/taxii2-client/)

    - [requests](https://pypi.org/project/requests/)

    ``` codeblock
    import requests
    from taxii2client.v21 import Server

    DISCOVERY_URL = "<your regional TAXII discovery URL>"
    TOKEN = "<your Vision One API token>"

    class BearerAuth(requests.auth.AuthBase):
        def __init__(self, token):
            self.token = token
        def __call__(self, r):
            r.headers["Authorization"] = f"Bearer {self.token}"
            return r

    # Get server
    server = Server(DISCOVERY_URL, auth=BearerAuth(TOKEN))
    print(f'Server title: {server.title}')
    print(f'API Roots: {server.api_roots}')

    # Get API root
    api_root = server.api_roots[0]
    print(f'\nAPI Root title: {api_root.title}')

    # Get collections
    collections = api_root.collections
    print('\nCollections:')
    for col in collections:
        print(f'- {col.title} (id: {col.id})')

    # Get collection
    collection = collections[0]
    # or collection = Collection(f'{DISCOVERY_URL}/api/collections/91a7b528-80eb-42ed-a74d-c6fbd5a26116/, auth=BearerAuth(TOKEN))
    print(f'\nCollection Info:\nID: {collection.id}\nTitle: {collection.title}')

    # Get manifest
    manifest = collection.get_manifest()
    print(f'\nManifest:\n{json.dumps(manifest, indent=2)}')

    # Get a STIX Object
    try:
        empty_object = collection.get_object('object-id')
        print(f'\nSTIX Object (empty):\n{json.dumps(empty_object, indent=2)}')
    except Exception as error:
        print(f'Object is not found: {error}')

    # Get STIX objects, single page
    objects = collection.get_objects()
    print('\nSTIX Objects:')
    for obj in objects['objects']:
        print(json.dumps(obj, indent=2))

    # Get STIX objects with match["id"]
    objs_by_id = collection.get_objects(id='campaign--8e3e4a78-1b6c-4b4c-97c0-d90f5fcbdc12')
    print(f'\nSTIX Objects (with match["id"]):\n{json.dumps(objs_by_id, indent=2)}')

    # Get STIX objects with match["type"]
    objs_by_type = collection.get_objects(type='campaign')
    print(f'\nSTIX Objects (with match["type"]):\n{json.dumps(objs_by_type, indent=2)}')

    # Get STIX objects with as_pages
    print('\nSTIX Objects (as_pages):')
    yesterday = datetime.datetime.now() - datetime.timedelta(days=1)
    for i, bundle in enumerate(as_pages(collection.get_objects, added_after=yesterday, per_request=1000), 1):
        print(f'Page {i}: {len(bundle["objects"])} {bundle["objects"][-1]["created"]}')
    ```
