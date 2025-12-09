---
slug: trend-vision-one-enable-custom-rules-v1cs
sidebar_position: 3
title: Enable custom rules
---

After creating valid Trend Vision One custom rules, enable and import your custom rules to Container Security.

### Procedure {#procedure}

1.  If the custom rules are configured using OCI repositories, create a Kubernetes secret that contains the basic authentication parameters of the OCI repositories.

    The format for the secret value is the same as the FALCOCTL_REGISTRY_AUTH_BASIC falcoctl environment variable.

2.  Configure credentials for multiple OCI repositories with a secret value like the following:

    ``` codeblock
    OCI registry,basic auth username,basic auth password;OCI registry1, basic auth username1, basic auth password
    ```

3.  Use the following command to create the Kubernetes secret for storing OCI repository authentication parameters:

    ``` codeblock
    kubectl create secret generic <oci-basic-auth-secret-name> --from-literal=falcoctl=<OCI registry,basic auth username,basic auth 
    password;OCI registry1, basic auth username1, basic auth password1> --namespace trendmicro-system
    ```

4.  Configure the `overrides.yaml` file and import your custom rules through local configuration or OCI registry:

    - Import custom rules through local configuration.

      1.  Create a custom rules file:

          ``` codeblock
          - rule: Detect Custom Event 1
            id: CR-00000001
            desc: A custom rule to detect a program called detectThisCmd
            condition: proc.cmdline icontains "detectThisCmd"
            output: custom2= "%proc.cmdline", custom4= "%user.name", custom5= "%proc.pid"
            priority: NOTICE
            tags:
                - container
            custom_fields:
                myField: "Sensitive file read access"
                cmdline: "%proc.cmdline"
                custom3: "a string"
                customField: "%user.name"
                custom5: "%proc.pid"

          - rule: Shell in container
            id: CR-00000002
            desc: Detect shell activity within a container
            condition: >
                evt.type=execve and evt.dir=< and 
                container.id!=host and (proc.name=bash or proc.name=ksh)
            output: custom2= "%proc.cmdline", custom4= "%user.name", custom5= "%proc.pid"
            priority: INFO
            tags:
                - container
                - mitre_discovery
            custom_fields:
                myField: "Sensitive file read access"
                cmdline: "%proc.cmdline"
                custom3: "a string"
                customField: "%user.name"
                custom5: "%proc.pid"
          ```

      2.  Clone the Helm repository from <https://github.com/trendmicro/visionone-container-security-helm>.

      3.  Copy the rule files into the directory `visionone-container-security-helm/config/customrules`.

      4.  Enable the custom rules feature by setting `visionOne.customRules.enabled=true` and `visionOne.customRules.output.visionOne.enabled=true`:

          ``` codeblock
          visionOne
              runtimeSecurity:
                  enabled: true
                  customRules:
                      enabled: true
                      output: 
                          visionOne:
                              enabled: true
          ```

    - Import custom rules through OCI registry.

      1.  Upload the rules file to OCI registry. This is typically done using the following command: `sudo falcoctl registry push <OCI-repository>:<tag> <rulesFilePath> --type rulesfile --version "<version>"`

      2.  Enable the custom rules feature by setting `visionOne.customRules.enabled=true`,` visionOne.customRules.output.visionOne.enabled=true`, `visionOne.ociRepository.enabled=true`, and specify the `artifactUrls`, `rulesFile(s)`, and `basicAuthTokenSecretName`:

          ``` codeblock
          visionOne:
              runtimeSecurity:
                  enabled: true
                  customRules:
                      enabled: true
                      output:
                          visionOne:
                              enabled: true
                      ociRepository:
                          enabled: true
                          artifactUrls:
                              - docker.io/sampleRules:latest
                          rulesFiles:
                              - sampleRulesFile.yaml
                      basicAuthTokenSecretName: <oci-basic-auth-secret-name>
          ```

5.  Complete configuration of the policy through policy as code.

    Custom rulesets are a part of the policy. To ensure there is no deviation when using a shared policy, the custom rules features requires users to use policy as code with a cluster-managed policy. Learn more about [Cluster-managed policies](../../policy/cluster-managed-policies).
