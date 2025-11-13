---
slug: trend-vision-one-sg-virtual-app-kvm
title: Deploy a Service Gateway virtual appliance with KVM
---

Use the Command Line Interface (CLI) to deploy a Service Gateway virtual appliance with Kernel-based Virtual Machine (KVM).

Verify that system requirements are met. For more information, see [Service Gateway appliance system requirements](sg-sys-requirements.md).

:::note
The following KVM instructions and screen captures were valid as of September 22, 2025. For further help, check your KVM documentation.
:::

### Procedure {#procedure}

1.  Go to **Workflow and Automation → Service Gateway Management**.

2.  Click **Download Virtual Appliance**.

    The **Service Gateway Virtual Appliance** panel appears.

3.  Select **KVM (QCOW2)**.

4.  Click **Download Disk Image** to download a QCOW2 file.

    :::tip
    Copy the registration token for later steps. The registration token will expire within 24 hours if not used.
    :::

5.  Upload the disk image to the Linux machine.

    1.  Verify that the KVM virtualization environment is ready on the Linux host by running the following commands:

        - `sudo systemctl status libvirtd.socket`

          Sample output:

          ``` codeblock
          systemctl status libvirtd.socket
          # ● libvirtd.socket - libvirt legacy monolithic daemon socket
          #      Loaded: loaded (/usr/lib/systemd/system/libvirtd.socket; enabled; preset: disabled)
          #      Active: active (running) since Fri 2025-08-01 23:35:42 CST; 1 week 2 days ago
          #       Until: Fri 2025-08-01 23:35:42 CST; 1 week 2 days ago
          #    Triggers: ● libvirtd.service
          #      Listen: /run/libvirt/libvirt-sock (Stream)
          #      CGroup: /system.slice/libvirtd.socket
          # 
          # Aug 01 23:35:42 Rocky-Linux systemd[1]: Listening on libvirt legacy monolithic daemon socket.
          ```

        - `sudo kvm-ok` (if supported on your machine)

          Sample output:

          ``` codeblock
          sudo kvm-ok
          # INFO: /dev/kvm exists
          # KVM acceleration can be used
          ```

    2.  Upload the image to the Linux machine, for example, upload it to `/kvm`. The full path is `/kvm/sg-va-3.0.23.10xxx.qcow2`.

6.  Create a virtual machine by using either command-line tools or GUI.

    - Use the command-line tool virt-install to create a virtual machine.

      1.  Specify the following settings in the command:

          - `name`: Specify the VM name, e.g., sg-va

          - `vcpu`: Specify the desired configuration, e.g., 8

          - `memory`: Specify the desired configuration, e.g., 12 GB

          - `disk`: Assign the Service Gateway image path as the system disk

          - `network`: Configure the network interface

          - `graphics`: Enable VNC access to the VM via `vnc://{host-machine}:5911` after deployment

          - `osinfo`: Use `rhel7.0` as the OS variant

          Below is an example of the complete command:

          ``` codeblock
          virt-install \
            --name sg-va \
            --cpu host-passthrough,cache.mode=passthrough \
            --vcpu 8 \
            --memory 12288 \
            --disk /kvm/sg-va-3.0.23.10xxx.qcow2,bus=virtio \
            --network network=hostbridge,model=virtio \
            --graphics vnc,port=5911,listen=0.0.0.0 \
            --video vga \
            --osinfo rhel7.0 \
            --noautoconsole \
            --import

          # Starting install...
          # Creating domain...                                                                        |    0 B  00:00:00
          # Domain creation completed.
          ```

      2.  After creating the virtual machine, use the `virsh` command to check its status. You should be able to see the VM is running.

          ``` codeblock
          virsh list
          # Id   Name   State
          # ----------------------
          # 2    sg-va   running
          ```

    - As an alternative, if you have KVM management tools installed on the host machine, you can use those tools to deploy and manage the VM.

      `Virtual Machine Manager` is used as an example in the following steps:

      1.  Launch Virtual Machine Manager.

          ![](/images/sg_kvm_1=c9157be9-b79c-490c-af9a-18a889a34c8c.webp)

      2.  Import the existing disk image to create the VM.

          ![](/images/sg_kvm_2=4263fd53-59c7-4923-b06e-f880d5f02ea7.webp)

      3.  Specify the image path and the operating system you are installing.

          ![](/images/sg_kvm_3=acc997c9-b91c-4660-b736-180badea5750.webp)

      4.  Assign CPU and memory resources.

          ![](/images/sg_kvm_4=63eecba2-9c50-42ef-a16b-59c8c26edf36.webp)

      5.  Specify the VM name and network configuration.

          ![](/images/sg_kvm_5=e19b85b8-d7bf-4cab-8ab2-48559b258baa.webp)

      6.  Start the VM.

          ![](/images/sg_kvm_6=827f22c9-6f9a-4127-8fdb-9857c6738f71.webp)

7.  On the Service Gateway virtual appliance, log on to the Command Line Interface (CLI) with the default credentials.

    User name: admin

    Password: V1SG@2021

8.  Change your password.

9.  Type `enable` and press the `ENTER` key to enable administrative commands. Provide your password when asked.

    The command prompt changes from \> to \#.

10. Configure the required network settings using the following CLISH commands.

    `Configure network primary ipv4.static <interface> <ip_cidr> <gateway> <dns1> [dns2] [cni]`

    `Configure static IPv4 network settings for the primary network interface`

    `<interface>: Name of the network interface (for example, eth0)`

    `<ip_cidr>: IPv4 address of the network interface in CIDR notation`

    `<gateway>: Gateway router address`

    `<dns1>: Primary DNS server address`

    `[dns2]: Secondary DNS server address`

    `[cni]: Internal network address pool (IP address ending in .0.0)`

11. To register the Service Gateway virtual appliance to Trend Vision One, use an SSH tool, such as the latest version of PuTTY, and using an account with administrator privileges, type the following command.

    `register <registration_token>`

    You can obtain the token from the same screen you download the virtual appliance on Trend Vision One (step 4).

    :::warning[Important]
    The virtual appliance only supports UTC time. Ensure your hypervisor is correctly configured.
    :::

    :::note
    - If your environment uses a local Network Time Protocol (NTP) server, make sure the NTP server synchronizes with the local time for successful registration.

    - Trend Micro recommends using an SSH client to easily copy and paste the registration token.
    :::

12. Use the CLI to configure other settings, if required.

    For more information on available commands, see [Service Gateway CLI commands](service-gateway-cli-commands.md).

    For details on setting up a virtual appliance with two network cards, see [Service Gateway Virtual Appliance dual network card configuration](https://success.trendmicro.com/dcx/s/solution/000292296?language=en_US).
