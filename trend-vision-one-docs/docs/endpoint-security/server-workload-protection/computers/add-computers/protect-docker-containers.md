---
slug: trend-vision-one-protect-docker-containers
sidebar_position: 5
title: Protect Docker containers
---

The benefits of a Docker deployment are real, but so is the concern about the significant attack surface of the Docker host's operating system (OS) itself. Like any well-designed software deployment, OS hardening and the use of best practices for your deployment, such as the [Center for Internet Security (CIS) Docker Benchmark](https://learn.cisecurity.org/benchmarks?category=benchmarks.servers.virtualization.docker), provide a solid foundation as a starting point. Once you have a secure foundation in place, adding Server & Workload Protection to your deployment gives you access to Trend Micro’s extensive experience protecting physical, virtual, and cloud workloads as well as to real-time threat information from the [Trend Micro Smart Protection Network](https://www.trendmicro.com/en_us/business/technologies/smart-protection-network.md). Server & Workload Protection both protects your deployment as well as helps meet and maintain continuous compliance requirements. See [Docker support](../../administration/manage-agents-protected-computers/configure-agent-version-control/agent-platform-compatibility) for information on supported Docker editions and releases.

Server & Workload Protection protects your Docker hosts and containers running on Linux distributions. Server & Workload Protection can do the following:

- Identify, find, and protect Docker hosts within your deployment through the use of [badges](./adding-computers) and [smart folders](../group-computers-dynamically-with-smart-folders)
- Protect Docker hosts and containers from vulnerabilities to [protect them against known and zero-day exploits](../../configure-protection-modules/configure-intrusion-prevention/set-up-intrusion-prevention/set-up-intrusion-prevention) by virtually patching new found vulnerabilities
- Provide [real-time anti-malware detection](../../configure-protection-modules/configure-anti-malware/anti-malware-set-up/enable-configure-anti-malware) for the file systems used on Docker hosts and within the containers
- Assert the integrity of the Docker host for continuous compliance and to protect your deployment using the following techniques:
  - Prevent the unauthorized execution of applications on Docker hosts by helping you [control which applications are allowed to run](../../configure-protection-modules/configuring-application-control/about-application-control/application-control) in addition to the Docker daemon
  - Monitor Docker hosts for [unexpected changes to system files](../../configure-protection-modules/configure-integrity-monitoring/set-up-integrity-monitoring/set-up-integrity-monitoring)
  - [Notify you of suspicious events in your OS logs](../../configure-protection-modules/configure-log-inspection/set-up-log-inspection/set-up-log-inspection)

:::note
Server & Workload Protection Docker protection works at the OS level. This means that the agent must be installed on the Docker host's OS, not inside a container.
:::

:::note
Communication between containers in the pod is not supported.
:::

Server & Workload Protection supports Docker in swarm mode while using an overlay network.

### Server & Workload Protection protection for the Docker host {#server-workload-protection-protection-for-the-docker-host}

The following Server & Workload Protection modules can be used to protect the Docker host:

- Intrusion Prevention (IPS)
- Anti-Malware
- Integrity Monitoring
- Log Inspection
- Application Control
- Firewall
- Web Reputation

### Server & Workload Protection protection for Docker containers {#server-workload-protection-protection-for-docker-containers}

The following Server & Workload Protection modules can be used to protect Docker containers:

- Intrusion Prevention
- Anti-Malware

### Limitation on Intrusion Prevention recommendation scans {#limitation-on-intrusion-prevention-recommendation-scans}

Although Server & Workload Protection Intrusion Prevention controls work at the host level, it also protects container traffic on the exposed container port numbers. Since Docker allows multiple applications to run on the same Docker host, a single Intrusion Prevention policy is applied to all Docker applications. This means that recommendation scans should not be relied upon for Docker deployments.
