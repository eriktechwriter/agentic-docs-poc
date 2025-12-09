---
slug: trend-vision-one-index-code-examples
sidebar_position: 4
title: Index of code examples
---

This page provides a categorized list of samples that we provide in the [Server & Workload Protection SDK Samples](https://github.com/deep-security/automation-center-sdk-samples) GitHub repository. The samples demonstrate how to use the SDKs to automate Server & Workload Protection administration tasks. They typically implement multi-operation algorithms.

Links are provided for each item:

- The Python link opens the sample in GitHub
- The Guide link opens a topic in the Server & Workload Protection documentation that includes part of the sample in the discussion

:::tip
The examples in the [API Reference](https://automation.trendmicro.com/cloudone/workload-security/) are not listed here. In the API Reference, for each operation, an example illustrates how to execute the operation using an SDK.
:::

### Anti-Malware {#anti-malware}

- Set the real time Anti-Malware scan configuration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/anti_malware_examples.py) | [Guide](./configure-protection/configure-anti-malware/configure-anti-malware-sdk) \]
- Add a directory to a directory list \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-modify-lists) \]
- Configure directory exclusions for a malware scan configuration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-configure-schedules) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Obtain the Anti-Malware configuration of all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]

### API Client {#api-client}

- List Policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_get_examples.py) | [Guide](../send-your-first-request-using-api) \]
- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](../send-your-first-request-using-api) \]

### API keys {#api-keys}

- Create an API key for auditing \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](./deploy-server-workload-protection/create-and-manage-api-keys/create-an-api-key-using-code/create-api-key-using-code) \]
- Generate a secret for an API key \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](./deploy-server-workload-protection/create-and-manage-api-keys/api-keys-after-create) \]
- Change the role for an API key \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](./deploy-server-workload-protection/create-and-manage-api-keys/api-keys-after-create) \]

### Application Control {#application-control}

- Turn on Application Control \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/config-app-control-policy) \]
- Block unrecognized software on a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/allow-block-unrecognized-software) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Create a shared ruleset \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/create-shared-ruleset) \]
- Add global rules \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/add-global-rules) \]
- Turn on maintenance mode for a timed duration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/configure-maintenance-mode) \]

### Computers {#computers}

- Add a computer to Server & Workload Protection \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](./deploy-server-workload-protection/add-computers) \]
- Search for a policy and assign it to a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Get the overrides for a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_override_examples.py) | [Guide](./configure-protection/override-policies-on-a-computer/override-policies-computer) \]
- Override reconnaissance scans for a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_override_examples.py) | [Guide](./configure-protection/override-policies-on-a-computer/override-policies-computer) \]
- Block unrecognized software on a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/allow-block-unrecognized-software) \]
- Report on agent status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Obtain the Anti-Malware configuration of all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Find computers that are not protected against a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Create a scheduled task that discovers computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Create, run, and delete a scheduled task that checks for component updates \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Run the discover computers scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Search using multiple criteria \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search computer sub objects \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search for null values \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Paged results of a computer search \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Generate an agent deployment script \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](./deploy-server-workload-protection/use-the-api-to-generate-an-agent-deployment-script/api-generate-agent-deploy) \]

### Firewall {#firewall}

- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](../send-your-first-request-using-api) \]
- Configure Firewall for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/firewall_examples.py) | [Guide](./configure-protection/configure-firewall/configure-firewall-sdk) \]
- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-configure-schedules) \]
- Retrieve policy settings (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Configure a system setting for a policy (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Set Firewall fail open behavior \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]

### Integrity Monitoring {#integrity-monitoring}

- Add integrity Monitoring rules to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/integrity_monitoring_examples.py) | [Guide](./configure-protection/configure-integrity-monitoring/configure-integrity-monitoring-sdk) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]

### Intrusion Prevention (IDS/IPS) {#intrusion-prevention-idsips}

- Configure Intrusion Prevention settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./configure-protection/configure-intrusion-prevention/configure-intrusion-prevention-sdk) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Find the Intrusion Prevention rules for a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Find computers that are not protected against a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Search Intrusion Prevention rules based on date updated \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]

### Lists {#lists}

- Add a directory to a directory list \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-modify-lists) \]

### Log Inspection {#log-inspection}

- Add a Log Inspection rule to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/log_inspection_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Create a basic Log Inspection rule \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Create a Log Inspection rule using XML \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Reset a subset of rule overrides for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]

### Policies {#policies}

- List Policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_get_examples.py) | [Guide](../send-your-first-request-using-api) \]
- Create a policy below Base Policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Configure Firewall for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/firewall_examples.py) | [Guide](./configure-protection/configure-firewall/configure-firewall-sdk) \]
- Configure Intrusion Prevention settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./configure-protection/configure-intrusion-prevention/configure-intrusion-prevention-sdk) \]
- Set the real time Anti-Malware scan configuration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/anti_malware_examples.py) | [Guide](./configure-protection/configure-anti-malware/configure-anti-malware-sdk) \]
- Turn on Web Reputation and configure settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/web_reputation_examples.py) | [Guide](./configure-protection/configure-web-reputation/configure-wrs-server-workload) \]
- Add integrity Monitoring rules to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/integrity_monitoring_examples.py) | [Guide](./configure-protection/configure-integrity-monitoring/configure-integrity-monitoring-sdk) \]
- Add a Log Inspection rule to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/log_inspection_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Turn on Application Control \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/config-app-control-policy) \]
- Search for a policy and assign it to a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Retrieve policy settings (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Configure a system setting for a policy (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Configure multiple system settings for a policy (Firewall fail open behavior) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Search for policies by name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search using multiple criteria \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search for null values \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Reset a subset of rule overrides for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]

### Recommendations {#recommendations}

- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]

### Reporting {#reporting}

- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Report on agent status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Obtain the Anti-Malware configuration of all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]

### Roles {#roles}

- Create a role with specific rights \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/role_examples.py) | [Guide](./deploy-server-workload-protection/control-access-using-roles/control-access-using-roles) \]
- Search for a role \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/role_examples.py) | [Guide](./deploy-server-workload-protection/create-and-manage-api-keys/create-an-api-key-using-code/create-api-key-using-code) \]
- Change the role for an API key \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](./deploy-server-workload-protection/create-and-manage-api-keys/api-keys-after-create) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]

### Rules {#rules}

- Add integrity Monitoring rules to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/integrity_monitoring_examples.py) | [Guide](./configure-protection/configure-integrity-monitoring/configure-integrity-monitoring-sdk) \]
- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](../send-your-first-request-using-api) \]
- Add a Log Inspection rule to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/log_inspection_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Create a basic Log Inspection rule \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Create a Log Inspection rule using XML \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/configure-log-inspection/config-log-inspection-swp) \]
- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-configure-schedules) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
- Find the Intrusion Prevention rules for a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Find computers that are not protected against a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/assign-rules-with-recommendation-scans/assign-rules-recommendation-scans) \]
- Search Intrusion Prevention rules based on date updated \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Reset a subset of rule overrides for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Add global Application Control rules \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/add-global-rules) \]

### Scheduled tasks {#scheduled-tasks}

- Create a daily schedule for a scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Create a monthly schedule for a scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Create a scheduled task that discovers computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Create, run, and delete a scheduled task that checks for component updates \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]
- Run the discover computers scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]

### Schedules {#schedules}

- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](./configure-protection/create-configure-schedules) \]

### Component updates {#component-updates}

- Create, run, and delete a scheduled task that checks for component updates \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](./maintain-protection/maintain-protection-using-scheduled-tasks/protection-scheduled-tasks) \]

### Search {#search}

- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](../send-your-first-request-using-api) \]
- Create a policy below Base Policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Search for a policy and assign it to a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Find the Intrusion Prevention rules for a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/patch-unprotected-computers/patch-unprotected-computers) \]
- Search for policies by name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search using multiple criteria \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search Intrusion Prevention rules based on date updated \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search computer sub objects \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Paged results of a computer search \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Search for a role \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/role_examples.py) | [Guide](./deploy-server-workload-protection/create-and-manage-api-keys/create-an-api-key-using-code/create-api-key-using-code) \]
- Search for null values \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](../search-for-resources) \]
- Block unrecognized software on a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](./configure-protection/configure-application-control/allow-block-unrecognized-software) \]

### Settings {#settings}

- Set the maximum number of sessions for users \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](./deploy-server-workload-protection/configure-server-workload-protection-system-settings/configure-system-settings) \]
- Configure Firewall for a policy \[ \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/firewall_examples.py) | [Guide](./configure-protection/configure-firewall/configure-firewall-sdk) \]
- Configure Intrusion Prevention settings \[ \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](./configure-protection/configure-intrusion-prevention/configure-intrusion-prevention-sdk) \]
- Turn on Web Reputation and configure settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/web_reputation_examples.py) | [Guide](./configure-protection/configure-web-reputation/configure-wrs-server-workload) \]
- Retrieve policy settings (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Configure a setting for a policy (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Configure multiple settings for a policy (Firewall fail open behavior) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](./configure-protection/create-and-configure-a-policy/create-configure-policy) \]
- Override reconnaissance scans for a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_override_examples.py) | [Guide](./configure-protection/override-policies-on-a-computer/override-policies-computer) \]
- Set a single system setting (allow agent-initiated activation) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](./deploy-server-workload-protection/configure-server-workload-protection-system-settings/configure-system-settings) \]

### Web Reputation {#web-reputation}

- Turn on Web Reputation and configure settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/web_reputation_examples.py) | [Guide](./configure-protection/configure-web-reputation/configure-wrs-server-workload) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](./maintain-protection/report-on-computer-status/report-computer-status) \]
