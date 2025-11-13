---
slug: trend-vision-one-create-vm-using-rest-api-v3
title: Create the VM using REST API (v3)
---

The Nutanix REST API (v3) allows for **automated VM deployments**, which is useful for scripting, CI/CD pipelines, or bulk VM provisioning. For more information, see [Nutanix KB 6440 – Create a VM using Nutanix REST API v3](https://portal.nutanix.com/page/documents/kbs/details?targetId=kA00e000000LLEzCAO) and [Nutanix API v3 – Creating a Linux VM with Cloud-Init – Nutanix.dev](https://www.nutanix.dev/2020/06/16/nutanix-api-v3-creating-a-linux-vm-with-cloud-init/).

Trend Micro recommends the following VM configuration:

- **VM Name:**`Nutanix-rest-connector-vm`

- **vCPUs:** 4 (1 socket × 4 vCPUs)

- **Memory:** 8 GB (8192 MB)

- **Disk:** Cloned from image `Nutaminx-connector-image`

- **Disk Bus:** IDE

- **Network:** Subnet `New-VLAN265` (DHCP)

Before starting, ensure that the required VM image has already been uploaded to the Nutanix Image Service and that the target network subnet (VLAN) has been created.

### Procedure {#procedure}

1.  Gather Required UUIDs

    REST API requires UUIDs for images and subnets instead of names.

    1.  Get the image UUID:

        ``` codeblock
        curl -u "admin:<password>" -k \
          -H "Content-Type: application/json" \
          -X POST https://<cluster-ip>:9440/api/nutanix/v3/images/list \
          -d '{"kind":"image","filter":"name==Nutaminx-connector-image"}'
        ```

        - **Purpose:** Retrieve the UUID of the image `Nutaminx-connector-image`.

        - **Output:** JSON including `metadata.uuid`, for example

          ``` codeblock
          "metadata": {
              "uuid": "c63ef950-7ba5-4450-bb10-65fdf209c639",
              "name": "Nutaminx-connector-image"
          ```

        This UUID will be used to attach the boot disk

    2.  Get the subnet UUID.

        ``` codeblock
        curl -u "admin:<password>" -k \
          -H "Content-Type: application/json" \
          -X POST https://<cluster-ip>:9440/api/nutanix/v3/subnets/list \
          -d '{"kind":"subnet","filter":"name==New-VLAN265"}'
        ```

        - **Purpose:** Retrieve the UUID of the subnet `New-VLAN265`.

        - **Output:** JSON including `metadata.uuid`, for example

          ``` codeblock
          "metadata": {
              "uuid": "06b5de80-6864-4871-b7b8-9e36849fb5a9",
              "name": "New-VLAN265"
          }
          ```

        This UUID is used to attach the NIC to the VM.

2.  Create the VM using the image UUID and the subnet UUID:

    ``` codeblock
    curl -u "admin:<password>" -k -H "Content-Type: application/json" \
      -X POST https://<cluster-ip>:9440/api/nutanix/v3/vms \
      -d '{
        "spec": {
          "name": "Nutanix-rest-connector-vm",
          "resources": {
            "num_vcpus_per_socket": 4,
            "num_sockets": 1,
            "memory_size_mib": 8192,
            "disk_list": [
              {
                "device_properties": {
                  "disk_address": {
                    "device_index": 0,
                    "adapter_type": "IDE"
                  }
                },
                "data_source_reference": {
                  "kind": "image",
                  "uuid": "c63ef950-7ba5-4450-bb10-65fdf209c639"
                }
              }
            ],
            "nic_list": [
              {
                "subnet_reference": {
                  "kind": "subnet",
                  "uuid": "06b5de80-6864-4871-b7b8-9e36849fb5a9"
                }
              }
            ]
          }
        },
        "metadata": {
          "kind": "vm"
        }
      }'
    ```

    **Definition of the key fields**

    <table>
    <thead style="text-align: left;">
    <tr>
    <th><p>Field</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody style="text-align: left;">
    <tr>
    <td><p><code>name</code></p></td>
    <td><p>Name of the VM (<code>Nutanix-rest-connector-vm</code>)</p></td>
    </tr>
    <tr>
    <td><code>num_vcpus_per_socket</code></td>
    <td><p>Number of vCPUs in each socket</p></td>
    </tr>
    <tr>
    <td><p><code>num_sockets</code></p></td>
    <td><p>Number of CPU sockets</p></td>
    </tr>
    <tr>
    <td><p><code>memory_size_mib</code></p></td>
    <td><p>Memory in MiB (8192 = 8GB)</p></td>
    </tr>
    <tr>
    <td><p><code>disk_list.device_properties.disk_address.adapter_type</code></p></td>
    <td><p>Bus type for the disk (<code>IDE</code>)</p></td>
    </tr>
    <tr>
    <td><p><code>disk_list.data_source_reference.uuid</code></p></td>
    <td><p>UUID of the image to clone from</p></td>
    </tr>
    <tr>
    <td><p><code>nic_list.subnet_reference.uuid</code></p></td>
    <td><p>UUID of the subnet for the VM NIC</p></td>
    </tr>
    <tr>
    <td><p><code>metadata.kind</code></p></td>
    <td><p>Must be <code>"vm"</code> for VM creation</p></td>
    </tr>
    </tbody>
    </table>

3.  Verify the VM creation after the command is finished:

    - Prism UI: Check the VMs page for `Nutanix-rest-connector-vm`

    - ACLI:

    ``` codeblock
    acli vm.get
                  Nutanix-rest-connector-vm
    ```

    - REST API:

    ``` codeblock
    curl -u
                  "admin:<password>" -k \   -H "Content-Type:
                application/json" \ 
                https://<cluster-ip>:9440/api/nutanix/v3/vms/<VM-UUID>
    ```

4.  Power on the VM:

    ``` codeblock
    curl -u "admin:<password>" -k \
      -H "Content-Type: application/json" \
      -X POST https://<cluster-ip>:9440/api/nutanix/v3/vms/<VM-UUID>/set_power_state \
      -d '{"transition":"ON"}'
    ```
