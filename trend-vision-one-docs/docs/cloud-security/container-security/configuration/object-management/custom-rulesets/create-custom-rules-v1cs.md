---
slug: trend-vision-one-create-custom-rules-v1cs
sidebar_position: 2
title: Create custom rules
---

Custom rules used for Trend Vision One Container Security are different from custom rules used by Falco. The existing fields do not need to change, but new fields must be added to make the rules compatible with Trend Vision One.

- Trend Vision One custom rule field descriptions
- Modify Falco rules
- Supported Falco output fields
- Optional rule fields

### Trend Vision One custom rule field descriptions {#trend-vision-one-custom-rule-field-descriptions}

For Trend Vision One custom rules, some new fields must be included for the rules file to be valid:

<table style="width:99%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead style="text-align: left;">
<tr>
<th>Field name</th>
<th>Field description</th>
<th>Example</th>
</tr>
</thead>
<tbody style="text-align: left;">
<tr>
<td><code>id</code></td>
<td><p>The rule ID must start with "CR-" and should be unique across custom rules. The rule ID must also be 20 characters or fewer, including the mandatory "CR-" prefix.</p></td>
<td><code>id: CR-00000001</code></td>
</tr>
<tr>
<td><code>custom_fields</code></td>
<td><p>This field must be a YAML object.</p>
<p>Container Security events are produced using Falco <code>output_fields</code>, allowing you to set additional outputs.</p>
<p>Custom fields can be any string keys and string values where the values might include falco output fields. Any falco output fields included in <code>custom_fields</code> must also be present in the output field.</p></td>
<td><pre class="codeblock"><code>custom_fields:
    myField: &quot;Sensitive file read access&quot;
&#10;custom_fields:
    myField: &quot;Sensitive file read access&quot;
    cmdline: &quot;%proc.cmdline&quot;
    custom3: &quot;a string&quot;
    customField: &quot;%user.name&quot;
    custom5: &quot;%proc.pid&quot;</code></pre></td>
</tr>
<tr>
<td><code>action</code></td>
<td><p>The mitigation action taken when this rule is detected. Allowed values: <code>log</code>, <code>isolate</code>, and <code>terminate</code>.</p></td>
<td><code>action: log</code></td>
</tr>
</tbody>
</table>

### Modify Falco rules {#modify-falco-rules}

The following is an example of a Falco rule that monitors access to sensitive files:

``` codeblock
- rule: Monitor Sensitive File Access
  desc: Detect any read access to sensitive files
  condition: >
    (syscall.type = openat and fd.name startswith "/etc/" and
    evt.arg.flags contains "O_RDONLY")
  output: "Sensitive file read access (user=%user.name command=%proc.cmdline
    file=%fd.name)"
  priority: info
```

To make this rule compatible with Trend Vision One, modify the rule to be similar to the following:

``` codeblock
- rule: Monitor Sensitive File Access
  id: CR-00000001
  desc: Detect any read access to sensitive files
  condition: >
    (syscall.type = openat and fd.name startswith "/etc/" and
    evt.arg.flags contains "O_RDONLY")
  output: "Sensitive file read access (user=%user.name command=%proc.cmdline
    file=%fd.name)"
  custom_fields:
     myField: "Sensitive file read access"
  priority: info
  action: log
```

In Trend Vision One, the `output` field is not directly used. Instead, the fields from the output are extracted to create an event format that is compatible with Trend Vision One. This means that the previous rule is functionally identical to the following rule because fields within the “output” field are the same:

``` codeblock
- rule: Monitor Sensitive File Access
  id: CR-00000001
  desc: Detect any read access to sensitive files
  condition: >
    (syscall.type = openat and fd.name startswith "/etc/" and
    evt.arg.flags contains "O_RDONLY")
  output: %user.name %proc.cmdline %fd.name
  custom_fields:
    myField: "Sensitive file read access"
  priority: info
  action: log
```

### Supported Falco output fields {#supported-falco-output-fields}

Not all Falco output fields are supported by Trend Vision One. The following table lists the supported falco fields and the name of the field in Trend Vision One.

:::note
To use fields not supported by Container Security, use `custom_fields`, as described in Trend Vision One custom rule field descriptions.
:::

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead style="text-align: left;">
<tr>
<th><p>Supported Falco fields</p></th>
<th><p>Name in Trend Vision One</p></th>
</tr>
</thead>
<tbody style="text-align: left;">
<tr>
<td><p><code>k8s.ns.name</code></p></td>
<td><p><code>k8sNamespace</code></p></td>
</tr>
<tr>
<td><p><code>k8s.pod.name</code></p></td>
<td><p><code>k8sPodName</code></p></td>
</tr>
<tr>
<td><p><code>k8s.pod.id</code></p></td>
<td><p><code>k8sPodId</code></p></td>
</tr>
<tr>
<td><p><code>container.name</code></p></td>
<td><p><code>containerName</code></p></td>
</tr>
<tr>
<td><p><code>container.id</code></p></td>
<td><p><code>containerId</code></p></td>
</tr>
<tr>
<td><p><code>container.image.repository</code></p></td>
<td><p><code>containerImgRepo</code></p></td>
</tr>
<tr>
<td><p><code>container.image.tag</code></p></td>
<td><p><code>containerImgTag</code></p></td>
</tr>
<tr>
<td><p><code>container.image.digest</code></p></td>
<td><p><code>containerImageDigest</code></p></td>
</tr>
<tr>
<td><p><code>proc.name</code></p></td>
<td><p><code>processName</code></p></td>
</tr>
<tr>
<td><p><code>proc.pid</code></p></td>
<td><p><code>processPid</code></p></td>
</tr>
<tr>
<td><p><code>proc.exeline</code></p></td>
<td><p><code>processCmd</code></p></td>
</tr>
<tr>
<td><p><code>proc.pname</code></p></td>
<td><p><code>parentName</code></p></td>
</tr>
<tr>
<td><p><code>proc.ppid</code></p></td>
<td><p><code>parentPid</code></p></td>
</tr>
<tr>
<td><p><code>proc.pcmdline</code></p></td>
<td><p><code>parentCmd</code></p></td>
</tr>
<tr>
<td><p><code>fd.filename</code></p></td>
<td><p><code>objectFileName</code></p></td>
</tr>
<tr>
<td><p><code>fd.directory</code></p></td>
<td><p><code>objectFileDir</code></p></td>
</tr>
<tr>
<td><p><code>fd.sip</code></p></td>
<td><p><code>dst</code></p></td>
</tr>
<tr>
<td><p><code>fd.sport</code></p></td>
<td><p><code>dpt</code></p></td>
</tr>
<tr>
<td><p><code>fd.cip</code></p></td>
<td><p><code>src</code></p></td>
</tr>
<tr>
<td><p><code>fd.cport</code></p></td>
<td><p><code>spt</code></p></td>
</tr>
<tr>
<td><p><code>fd.proto</code></p></td>
<td><p><code>app</code></p></td>
</tr>
<tr>
<td><p><code>fd.l4proto</code></p></td>
<td><p><code>proto</code></p></td>
</tr>
<tr>
<td><p><code>fd.name</code></p></td>
<td><p><code>fileDesc</code></p></td>
</tr>
</tbody>
</table>

### Optional rule fields {#optional-rule-fields}

The following rule fields are optional for Container Security custom rules and can be written according to normal Falco rule guidelines.

Use the tags field to add generic tags to a rule:

``` codeblock
tags:
  - container
  - filesystem
```

:::note
The tags field appears as `customTags` in Trend Vision One.
:::

Use the exceptions field to filter events. Trend Micro services might trigger some events, which are typically minimal and can be safely ignored. Add the following exception to your rule definition to filter these out within the specified Kubernetes namespace:

``` codeblock
exceptions:
  - name: trend_namespace
  fields: [k8s.ns.name]
  comps: [=]
  values:
  - [trendmicro-system]
```
