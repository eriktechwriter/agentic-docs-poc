---
slug: trend-vision-one-search-for-identified-file
title: Search for an identified file
---

Use the Advanced Search to locate a file Server & Workload Protection identified to contain malware.

Use the advanced search in the **Identified Files** list to locate specific files you want to manage.

### Procedure {#procedure}

1.  In the Trend Vision One console, access the Server & Workload Protection instance managing the infected endpoint.

2.  Go to **Events & Reports → Events → Anti-Malware Events → Identified Files**.

3.  To use Advanced Search, click **Search this page** and select **Open Advanced Search**.

    The Advanced Search appears under the **Period** and **Computers** filters.

    ![](/images/Identified-Files-Search=1d7cc639-4257-4228-9282-ddafae6c224a.webp)

4.  Select the list column to search.

    Some of the following columns are hidden by default. Click ![](/images/columns=7c59c262-342d-4e3e-8181-0ea30819ac11.webp) **Columns** to manage the information you want to display.

    - **Infected File(s)**: Search by file name

    - **Malware**: Search by malware name

    - **Computer**: Search by endpoint name

    - **File SHA-1**: Search by SHA-1 hash value

    - **Container ID**: Search by Docker container name

    - **Container Image Name**: Search by Docker container image name

    - **Container Name**: Search by Docker container name

5.  Select an operator.

    - **Contains**: The entry in the selected column contains the search string.

    - **Does Not Contain**: The entry in the selected column does not contain the search string.

    - **Equals**: The entry in the selected column exactly matches the search string.

    - **Does Not Equal**: The entry in the selected column does not exactly match the search string.

    - **In**: The entry in the selected column exactly matches one of the comma-separated search string entries.

    - **Not In**: The entry in the selected column does not exactly match any of the comma-separated search string entries.

6.  Specify a search string.

    :::note
    Search strings are not case sensitive.
    :::

7.  To add additional search criteria, click the add icon (+).

8.  Click the search icon (![](/images/Search-Refresh=f7e99592-3b82-4674-ba09-dcca708d4095.webp)) to apply the search filters.
