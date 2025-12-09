---
slug: trend-vision-one-get-started-container-security
sidebar_position: 1
title: Getting started with Container Security
---

Connect Amazon ECS or Kubernetes clusters and create protection policies to start monitoring your container environment with Container Security.

The following table describes the platform support for different ECS and EKS deployments.

<table>
<thead>
<tr>
<th></th>
<th colspan="2"><p>Amazon EKS</p></th>
<th colspan="2"><p>Amazon ECS</p></th>
<th><p>Microsoft</p></th>
<th colspan="2"><p>Google</p></th>
<th><p>Alibaba Cloud</p></th>
<th colspan="2"><p>Oracle Cloud</p></th>
<th><p>Kubernetes*</p></th>
</tr>
</thead>
<tbody>
<tr>
<td> </td>
<td><p>EC2</p></td>
<td><p>Fargate</p></td>
<td><p>EC2</p></td>
<td><p>Fargate</p></td>
<td>AKS Standard</td>
<td><p>GKE Standard</p></td>
<td><p>GKE Autopilot</p></td>
<td><p>ACK</p></td>
<td><p>OKE Managed</p></td>
<td><p>OKE Virtual</p></td>
<td> </td>
</tr>
<tr>
<td><p>Admission controller</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td> </td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
</tr>
<tr>
<td>Continuous Compliance</td>
<td>Y</td>
<td>Y</td>
<td> </td>
<td> </td>
<td>Y</td>
<td>Y</td>
<td>Y</td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td>Y</td>
</tr>
<tr>
<td><p>Runtime Security</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
</tr>
<tr>
<td><p>Vulnerability Scanning</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
</tr>
<tr>
<td><p>Malware Scanning</p></td>
<td>Y</td>
<td> </td>
<td> </td>
<td> </td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
</tr>
<tr>
<td><p>Compliance Scanning</p></td>
<td><p>Y</p></td>
<td> </td>
<td> </td>
<td> </td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td> </td>
<td><p>Y</p></td>
</tr>
<tr>
<td>Runtime Secret Scanning</td>
<td>Y</td>
<td></td>
<td></td>
<td></td>
<td>Y</td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><p>Y</p></td>
<td> </td>
<td>Y</td>
</tr>
<tr>
<td>Image Signature Verification</td>
<td>Y</td>
<td>Y</td>
<td></td>
<td></td>
<td>Y</td>
<td>Y</td>
<td>Y</td>
<td>Y</td>
<td><p>Y</p></td>
<td><p>Y</p></td>
<td>Y</td>
</tr>
</tbody>
</table>

\*Includes OpenShift, Gardener, and any other self-managed on-prem clusters.

Get Container Security protection up and running quickly and start monitoring your container environment for vulnerabilities and policy violations in 5 easy steps.

1.  Connect a cluster:

    - [Connect an Amazon EKS cluster](./kubernetes-cluster-security/connect-amazon-eks-clusters-with-and-without-fargate)

    - [Connect a Microsoft AKS cluster](./kubernetes-cluster-security/connecting-microsoft-aks-clusters)

    - [Connect a Google GKE cluster](./kubernetes-cluster-security/connect-google-gke-clusters)

    - [Connect Alibaba Cloud ACK clusters](./kubernetes-cluster-security/connect-alibaba-ack-clusters)

    - [Connect Oracle Cloud OKE clusters](./kubernetes-cluster-security/connect-oracle-oke-clusters)

2.  [Create a Runtime Scanning ruleset](./runtime-security-ruleset)

3.  [Create a Container Protection policy](./create-a-container-security-policy)

4.  Deploy Container Security to one or more of your Kubernetes or Amazon ECS clusters.

    - Kubernetes: [Amazon EKS clusters (with and without Fargate)](./kubernetes-cluster-security/connect-amazon-eks-clusters-with-and-without-fargate), [Microsoft AKS clusters](./kubernetes-cluster-security/connecting-microsoft-aks-clusters), [Google GKE clusters](./kubernetes-cluster-security/connect-google-gke-clusters), [Connect Alibaba Cloud ACK clusters](./kubernetes-cluster-security/connect-alibaba-ack-clusters), [Connect Oracle Cloud OKE clusters](./kubernetes-cluster-security/connect-oracle-oke-clusters), [Protect Red Hat OpenShift containers](./kubernetes-cluster-security/protect-red-hat-openshift-containers)

    - Amazon ECS: [Amazon ECS clusters](./amazon-ecs-cluster-security/ecs-clusters-new-aws) or [Amazon ECS Fargate clusters](./amazon-ecs-cluster-security/amazon-ecs-fargate-clusters)

5.  Monitor [policy violations](../log) and [vulnerability detections](../log/vulnerabilities-container-prot)

:::note
Container Security supports asset configuration and management with Terraform. For details, see the [Trend Vision One Terraform Provider](https://registry.terraform.io/providers/trendmicro/vision-one/latest).
:::

**Related information**

- [Create a Container Security Runtime Security ruleset](./runtime-security-ruleset "Define Container Security managed rulesets to ensure protection for your containers during Runtime Security scanning.")
- [Create a Container Security policy](./create-a-container-security-policy "Define Container Security policies to ensure protection and vulnerability detection for your containers during deployment and run time.")
- [Kubernetes cluster security](./kubernetes-cluster-security)
- [Amazon ECS cluster security](./amazon-ecs-cluster-security)
- [Deploy Container Security operator for Red Hat OpenShift](./red-hat-openshift-operator)
