---
slug: trend-vision-one-cis-aks17-recs
sidebar_position: 1
title: Azure Kubernetes Service (AKS) 1.7.0 recommendations
---

**Related information**

- [3.1.1 - Ensure that the kubeconfig file permissions are set to 644 or more restrictive (Automated)](./cis-aks17-311)
- [3.1.2 - Ensure that the kubelet kubeconfig file ownership is set to root:root (Automated)](./cis-aks17-312)
- [3.1.3 - Ensure that the azure.json file has permissions set to 644 or more restrictive (Automated)](./cis-aks17-313)
- [3.1.4 - Ensure that the azure.json file ownership is set to root:root (Automated)](./cis-aks17-314)
- [3.2.1 - Ensure that the --anonymous-auth argument is set to false (Automated)](./cis-aks17-321)
- [3.2.2 - Ensure that the --authorization-mode argument is not set to AlwaysAllow (Automated)](./cis-aks17-322)
- [3.2.3 - Ensure that the --client-ca-file argument is set as appropriate (Automated)](./cis-aks17-323)
- [3.2.4 - Ensure that the --read-only-port is secured (Automated)](./cis-aks17-324)
- [3.2.5 - Ensure that the --streaming-connection-idle-timeout argument is not set to 0 (Automated)](./cis-aks17-325)
- [3.2.6 - Ensure that the --make-iptables-util-chains argument is set to true (Automated)](./cis-aks17-326)
- [3.2.7 - Ensure that the --eventRecordQPS argument is set to 0 or a level which ensures appropriate event capture (Automated)](./cis-aks17-327)
- [3.2.8 - Ensure that the --rotate-certificates argument is not set to false (Automated)](./cis-aks17-328)
- [3.2.9 - Ensure that the RotateKubeletServerCertificate argument is set to true (Automated)](./cis-aks17-329)
- [4.1.1 - Ensure that the cluster-admin role is only used where required (Automated)](./cis-aks17-411)
- [4.1.2 - Minimize access to secrets (Automated)](./cis-aks17-412)
- [4.1.3 - Minimize wildcard use in Roles and ClusterRoles (Automated)](./cis-aks17-413)
- [4.1.4 - Minimize access to create pods (Automated)](./cis-aks17-414)
- [4.1.5 - Ensure that default service accounts are not actively used (Automated)](./cis-aks17-415)
- [4.1.6 - Ensure that Service Account Tokens are only mounted where necessary (Automated)](./cis-aks17-416)
- [4.2.1 - Minimize the admission of privileged containers (Automated)](./cis-aks17-421)
- [4.2.2 - Minimize the admission of containers wishing to share the host process ID namespace (Automated)](./cis-aks17-422)
- [4.2.3 - Minimize the admission of containers wishing to share the host IPC namespace (Automated)](./cis-aks17-423)
- [4.2.4 - Minimize the admission of containers wishing to share the host network namespace (Automated)](./cis-aks17-424)
- [4.2.5 - Minimize the admission of containers with allowPrivilegeEscalation (Automated)](./cis-aks17-425)
- [4.4.2 - Ensure that all Namespaces have Network Policies defined (Automated)](./cis-aks17-442)
- [4.5.1 - Prefer using secrets as files over secrets as environment variables (Automated)](./cis-aks17-451)
- [4.6.3 - The default namespace should not be used (Automated)](./cis-aks17-463)
- [5.4.1 - Restrict Access to the Control Plane Endpoint (Automated)](./cis-aks17-541)
- [5.4.2 - Ensure clusters are created with Private Endpoint Enabled and Public Access Disabled (Automated)](./cis-aks17-542)
- [5.4.3 - Ensure clusters are created with Private Nodes (Automated)](./cis-aks17-543)
- [5.4.4 - Ensure Network Policy is Enabled and set as appropriate (Automated)](./cis-aks17-544)
