---
slug: trend-vision-one-deploy-pa-connector-nutanix-acli
sidebar_position: 2
title: Deploy the Private Access connector on Nutanix AHV using ACLI
---

ACLI (Acropolis Command Line Interface) provides a CLI to manage Nutanix clusters. This is useful for repeatable, scriptable deployments without using the UI. For detailed ACLI commands for managing VMs, including disk creation and bus type configuration, see [Nutanix Command Reference - AOS -v7.3](https://portal.nutanix.com/docs/Command-Ref-AOS-v7_3:acl-acli-vm-auto-r.md).

The required VM image must have been uploaded to the Nutanix Image Service, and the target network subnet (VLAN) must have been created before performing the steps outlined below. You must connect to one of the Controller VMs (CVMs) in the cluster via SSH before running ACLI commands.

### Procedure {#procedure}

1.  Create the VM:

    ``` codeblock
    acli vm.create Nutanix-connector-vm num_vcpus=4 num_cores_per_vcpu=1 memory=8192M
    ```

    - vm create: creates a new VM with the given name

    - num_vcpus=4: Total number of vCPUs for the VM

    - num_cores_per_vcpu=1: 1 core per vCPU (so 4 total vCPUs)

    - memory=8192M: Allocates 8 GB memory

    The VM is created but has no disk or network.

2.  Attach a disk:

    ``` codeblock
    acli vm.disk_create Nutanix-acli-connector-vm bus=ide type=clone image=Nutaminx-connector-image
    ```

    - vm.disk_create: Adds a virtual disk to the VM

    - bus=ide: The disk is attached using IDE bus type (required by some OS images)

    - type=clone:Creates the disk as a clone of an existing image (faster than full copy)

    - image=Nutaminx-connector-image: Name of the image from the Image Service

    This creates a bootable system disk from the specified image.

3.  Attach a NIC (Network Interface):

    ``` codeblock
    acli vm.nic_create Nutanix-acli-connector-vm network=New-VLAN265
    ```

    - vm.nic_create: Adds a virtual NIC to the VM
    - network=New-VLAN265: Connects the NIC to the specified subnet

    This ensures that the VM has network connectivity once powered on.

4.  Verify the VM.

    ``` codeblock
    acli vm.get Nutanix-acli-connector-vm
    ```

    This displays the VM details including:

    - Name, UUID, Power State

    - vCPU and Memory configuration

    - Attached disks and bus type

    - NICs and assigned subnet

    Example output:

    ``` codeblock
    uuid                : 0005f87b-1234-5678-9abc-000000abcd12
    name                : Nutanix-acli-connector-vm
    num_vcpus           : 4
    memory              : 8192 MB
    disk_list           : [IDE 0: cloned from image 'Nutaminx-connector-image']
    nic_list            : [connected to 'New-VLAN265']
    ```

5.  Power on the VM

    ``` codeblock
    acli vm.on Nutanix-acli-connector-vm
    ```

    This starts the VM. You can then connect via console (from Prism) or SSH.
