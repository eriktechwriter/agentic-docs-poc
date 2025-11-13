---
slug: trend-vision-one-nsa-hardening-1-2-recs
title: NSA/CISA Kubernetes Hardening Guidance
---

**Related information**

- [1.2.4 - Ensure that the --kubelet-https argument is set to true (Automated)](nsa-hardening-1-2-124.md)
- [1.2.8 - Ensure that the --authorization-mode argument includes Node (Automated)](nsa-hardening-1-2-128.md)
- [1.2.16 - Ensure that the --audit-log-path argument is set (Automated)](nsa-hardening-1-2-1216.md)
- [1.2.17 - Ensure that the --audit-log-maxage argument is set to 30 or as appropriate (Automated)](nsa-hardening-1-2-1217.md)
- [1.2.26 - Ensure that the --etcd-cafile argument is set as appropriate (Automated)](nsa-hardening-1-2-1226.md)
- [1.2.27 - Ensure that the --insecure-port argument is set to 0 (Automated)](nsa-hardening-1-2-1227.md)
- [1.2.28 - Ensure that a minimal audit policy is created (Automated)](nsa-hardening-1-2-1228.md)
- [1.3.29 - Ensure that the --encryption-provider-config argument is set as appropriate (Automated)](nsa-hardening-1-2-1329.md)
- [2.1.1 - Ensure that the --anonymous-auth argument is set to false (Automated)](nsa-hardening-1-2-211.md)
- [3.1.1 - Ensure kube-system namespace is not used by users (Automated)](nsa-hardening-1-2-311.md)
- [3.1.2 - Ensure that all Namespaces have Network Policies defined (Automated)](nsa-hardening-1-2-312.md)
- [3.2.1 - Ensure LimitRange policy is used to limit resource usage (Automated)](nsa-hardening-1-2-321.md)
- [3.2.2 - Ensure ResouceQuota policy is used to limit resource usage (Automated)](nsa-hardening-1-2-322.md)
- [4.1.2 - Minimize the admission of containers configured to share the host process ID namespace (Automated)](nsa-hardening-1-2-412.md)
- [4.1.3 - Minimize the admission of containers configured to share the host IPC namespace (Automated)](nsa-hardening-1-2-413.md)
- [4.1.4 - Minimize the admission of containers configured to share the host network namespace (Automated)](nsa-hardening-1-2-414.md)
- [4.1.8 - Ensure the SELinux context of the container is set (Automated)](nsa-hardening-1-2-418.md)
- [4.1.9 - Ensure AppArmor is configured to restrict container's access to resources](nsa-hardening-1-2-419.md)
- [4.2.10 - Ensure container file system is immutable (Automated)](nsa-hardening-1-2-4210.md)
- [4.4.5 - Ensure that default service accounts are not actively used. (Automated)](nsa-hardening-1-2-445.md)
- [4.4.6 - Ensure that Service Account Tokens are only mounted where necessary (Automated)](nsa-hardening-1-2-446.md)
- [4.5.1 - Minimize the admission of privileged containers (Automated)](nsa-hardening-1-2-451.md)
- [4.5.5 - Minimize the admission of containers with allowPrivilegeEscalation (Automated)](nsa-hardening-1-2-455.md)
- [4.5.11 - Ensure SecurityContext is applied to the Pods and Containers (Automated)](nsa-hardening-1-2-4511.md)
- [4.5.12 - Restrict allowedHostPath to minimize access to the host file system (Automated)](nsa-hardening-1-2-4512.md)
- [5.3.3 - Ensure Secure Computing mode (seccomp) is enabled to sandbox containers (Automated)](nsa-hardening-1-2-533.md)
