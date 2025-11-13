---
slug: trend-vision-one-avtd-oci-predeployment
title: Agentless Vulnerability & Threat Detection pre-deployment steps for Oracle Cloud Infrastructure (OCI)
---

Ensure your Agentless Vulnerability & Threat Detection deployment to your Oracle Cloud Infrastructure (OCI) compartment proceeds smoothly by completing steps prior to deployment.

OCI environments have provider-specific requirements you must satisfy to successfully deploy Agentless Vulnerability & Threat Detection to your OCI compartment. Make sure you complete the following steps before Agentless Vulnerability & Threat Detection deployment to your connected OCI compartment.

### Procedure {#procedure}

1.  Set up your Terraform environment.

    1.  Make sure Docker is [installed, open, and running](https://docs.oracle.com/en-us/iaas/Content/Functions/Tasks/functionsquickstartlocalhost.htm). Agentless Vulnerability & Threat Detection requires Docker to execute the deployment script.

    2.  If you are using Windows Subsystem for Linux (Windows WSL), make sure the [jq tool](https://jqlang.org/download/) is installed.

2.  Configure your OCI compartment for Agentless Vulnerability & Threat Detection deployment.

    1.  Make sure you have added the [Oracle Cloud Infrastructure required and granted permissions](oracle-required-granted-permissions.md) to your deployment environment.

    2.  Replicate your home region identity domain to the regions containing the resources you want Agentless Vulnerability & Threat Detection to scan. To learn more, see Oracle's documentation on [replicating an identity domain to multiple regions](https://docs.oracle.com/en-us/iaas/Content/Identity/domains/to-manage-regions-for-domains.htm).

        :::note
        You only need to replicate your home region identity domain before the initial Agentless Vulnerability & Threat Detection deployment. The domain does not need to be replicated for subsequent deployments unless you are deploying to a new region.
        :::

3.  Verify that your OCI compartment has sufficient resource quotas to handle Agentless Vulnerability & Threat Detection deployment.

    1.  Check the following static resource types and ensure your quotas meet or exceed the numbers of resources deployed by Agentless Vulnerability & Threat Detection.

        **OCI static resource quota requirements**

        <table style="width:99%;">
        <colgroup>
        <col style="width: 33%" />
        <col style="width: 33%" />
        <col style="width: 33%" />
        </colgroup>
        <thead>
        <tr>
        <th><p>Resource type</p></th>
        <th><p>Quota requirement: deployment to primary region only</p></th>
        <th><p>Quota requirement: deployment to primary region and non-primary region</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>oci_artifacts_container_images</p></td>
        <td><p>2</p></td>
        <td><p>3</p></td>
        </tr>
        <tr>
        <td><p>oci_artifacts_container_repository</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_default_security_list</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_internet_gateway</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_nat_gateway</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_route_table</p></td>
        <td><p>3</p></td>
        <td><p>6</p></td>
        </tr>
        <tr>
        <td><p>oci_core_security_list</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_service_gateway</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_services</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_core_subnet</p></td>
        <td><p>2</p></td>
        <td><p>4</p></td>
        </tr>
        <tr>
        <td><p>oci_core_vcn</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_events_rule</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_functions_application</p></td>
        <td><p>2</p></td>
        <td><p>4</p></td>
        </tr>
        <tr>
        <td><p>oci_functions_function</p></td>
        <td><p>16</p></td>
        <td><p>28</p></td>
        </tr>
        <tr>
        <td><p>oci_identity_policy</p></td>
        <td><p>4</p></td>
        <td><p>4</p></td>
        </tr>
        <tr>
        <td><p>oci_logging_log</p></td>
        <td><p>19</p></td>
        <td><p>34</p></td>
        </tr>
        <tr>
        <td><p>oci_logging_log_group</p></td>
        <td><p>2</p></td>
        <td><p>4</p></td>
        </tr>
        <tr>
        <td><p>oci_monitoring_alarm</p></td>
        <td><p>3</p></td>
        <td><p>6</p></td>
        </tr>
        <tr>
        <td><p>oci_objectstorage_bucket</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_objectstorage_object</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_objectstorage_object_lifecycle_policy</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_ons_subscription</p></td>
        <td><p>8</p></td>
        <td><p>16</p></td>
        </tr>
        <tr>
        <td><p>oci_queue_queue</p></td>
        <td><p>1</p></td>
        <td><p>2</p></td>
        </tr>
        <tr>
        <td><p>oci_resource_scheduler_schedule</p></td>
        <td><p>10</p></td>
        <td><p>17</p></td>
        </tr>
        <tr>
        <td><p>oci_vault_secret</p></td>
        <td><p>3</p></td>
        <td><p>3</p></td>
        </tr>
        </tbody>
        </table>

    2.  Ensure the resource limits set for your deployed region are sufficient to handle the following dynamic resources created during Agentless Vulnerability & Threat Detection scans.

        - Block volumes

        - Block volume backups

        - Boot volumes

        - Boot volume backups

        - Compute instances

        - Container instances

        :::note
        - The Agentless Vulnerability & Threat Detection container instance scaler uses a two-tiered architecture to handle container image scanning. The requirements for dynamically created resources differ based on the container instance tier.

        - Agentless Vulnerability & Threat Detection automatically deletes dynamically created resources when a scan completes.
        :::

        **Dynamic resource requirements for Agentless Vulnerability & Threat Detection scans by container instance tier**

        <table>
        <colgroup>
        <col style="width: 25%" />
        <col style="width: 25%" />
        <col style="width: 25%" />
        <col style="width: 25%" />
        </colgroup>
        <thead>
        <tr>
        <th><p>Container instance tier</p></th>
        <th><p>Purpose</p></th>
        <th><p>Required resources</p></th>
        <th><p>Image size scaling</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>Normal</p></td>
        <td><p>Scanning of images less than or equal to 5 GB in size</p></td>
        <td><ul>
        <li><p>16 GB RAM</p></li>
        <li><p>1 OCPU</p></li>
        </ul></td>
        <td><ul>
        <li><p>One instance required per 10 images scanned</p></li>
        <li><p>Maximum of 100 instances created per scan</p></li>
        </ul></td>
        </tr>
        <tr>
        <td><p>Large</p></td>
        <td><p>Scanning of images from 5 GB to 30 GB in size</p></td>
        <td><ul>
        <li><p>128 GB RAM</p></li>
        <li><p>2 OCPUs</p></li>
        <li><p>Memory-backed temporaty file system (tmpfs)</p></li>
        </ul></td>
        <td><ul>
        <li><p>One instance required per 10 images scanned</p></li>
        <li><p>Maximum of 10 instances created per scan</p></li>
        </ul></td>
        </tr>
        </tbody>
        </table>

        :::note
        - Limits for OCPUs are compartment-level limits shared with OCI compute instances. Administrators can set OCPU limits by region, with specific limits for different OCI compute shapes.

        - To learn more about making sure your compartment in the deployment region has sufficient resource limits to handle OCI container instance services used by Agentless Vulnerability & Threat Detection, see the Oracle documentation on [viewing a tenancy's limits](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/servicelimits-view-tenancy.htm) and usage and [limits by service](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/servicelimits.htm).
        :::
