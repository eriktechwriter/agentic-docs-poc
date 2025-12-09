---
slug: trend-vision-one-integrating-tmas-ci-cd-pipeline-2
sidebar_position: 1
title: Integrate Trend Micro Artifact Scanner (TMAS) into a CI/CD pipeline
---

Trend Micro Artifact Scanner (TMAS) can be integrated into your continuous integration (CI) or continuous delivery (CD) pipeline.

For example, Jenkins projects can automatically build, test, and push Docker images to a Docker registry. Once pushed, the image may be instantly available to run in an orchestration environment. If open source vulnerabilities exist in the image, then they are a risk when the image is run. Since images are intended to be immutable, images should be scanned before they're deployed to a cluster.

Examples of artifacts that TMAS can scan include:

- Container Images

- Binary Files

- Directories with source code

- OCI Archives

### Use GitHub action to install TMAS {#use-github-action-to-install-tmas}

The [TMAS GitHub action](https://github.com/trendmicro/tmas-scan-action) uses automated CI/CD integration to run scans in every pull request or push to enforce policies directly in the pipeline.

The TMAS GitHub action includes the following functionality:

- Runs scans on GitHub repository source code as well as container images and build artifacts.

- Automatically posts pull request comments with scan results and detailed logging.

- Installs the specified TMAS CLI version on the GitHub runner and executes scans on a chosen artifact.

- Automatically updates to the latest TMAS version.

- Add Code Security policies to enforce policy standards, like allowing or blocking pull request merges that meet particular parameters. .

  [Learn more](../../code-security-policies)

  :::note
  Policy enforcement is only supported for Code Security deployments.
  :::

[Learn more](https://github.com/trendmicro/tmas-scan-action/blob/main/README.md) about using the TMAS GitHub action.

### Manually install TMAS {#manually-install-tmas}

TMAS scans [artifacts](../../../container-security/log/container-image-scanning/trend-micro-artifact-scanner-tmas/artifact-scanner-cli) inside your CI/CD pipelines. You can install the Trend Micro Artifact Scanner CLI into your CI/CD pipeline to perform scans before artifacts are deployed to production. For vulnerability scans, TMAS takes the artifact that you want to scan and generates a Software Bill of Materials (SBOM). It then uploads the SBOM to Trend Vision One for processing and returns a vulnerability report.

Select your system architecture to download the artifact scanner installer for integration in your CI/CD pipeline. You can check the latest version using [metadata.json](https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/metadata.json).

<table>
<thead>
<tr>
<th><p>Architecture</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Darwin_arm64.zip">Darwin_arm64</a> (MacOS - Apple Silicon chipset)</p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Darwin_x86_64.zip">Darwin_x86_64</a> (MacOS - Intel chipset)</p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Linux_arm64.tar.gz">Linux_arm64</a></p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Linux_i386.tar.gz">Linux_i386</a></p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Linux_x86_64.tar.gz">Linux_x86_64</a></p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Windows_arm64.zip">Windows_arm64</a></p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Windows_i386.zip">Windows_i386</a></p></td>
</tr>
<tr>
<td><p><a href="https://cli.artifactscan.cloudone.trendmicro.com/tmas-cli/latest/tmas-cli_Windows_x86_64.zip">Windows_x86_64</a></p></td>
</tr>
</tbody>
</table>

**Related information**

- [System requirements](./sys-req-artifact-scanner-2)
- [Update to the latest version](./updating-artifact-scanner-cli-2)
- [Obtain an API key](./obtaining-api-key-2)
