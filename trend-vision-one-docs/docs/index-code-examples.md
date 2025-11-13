---
slug: trend-vision-one-index-code-examples
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

- Set the real time Anti-Malware scan configuration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/anti_malware_examples.py) | [Guide](configure-anti-malware-sdk.md) \]
- Add a directory to a directory list \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-modify-lists.md) \]
- Configure directory exclusions for a malware scan configuration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-configure-policy.md) \]
- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-configure-schedules.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Obtain the Anti-Malware configuration of all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]

### API Client {#api-client}

- List Policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_get_examples.py) | [Guide](send-your-first-request-using-api.md) \]
- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](send-your-first-request-using-api.md) \]

### API keys {#api-keys}

- Create an API key for auditing \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](create-api-key-using-code.md) \]
- Generate a secret for an API key \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](api-keys-after-create.md) \]
- Change the role for an API key \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](api-keys-after-create.md) \]

### Application Control {#application-control}

- Turn on Application Control \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](config-app-control-policy.md) \]
- Block unrecognized software on a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](allow-block-unrecognized-software.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Create a shared ruleset \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](create-shared-ruleset.md) \]
- Add global rules \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](add-global-rules.md) \]
- Turn on maintenance mode for a timed duration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](configure-maintenance-mode.md) \]

### Computers {#computers}

- Add a computer to Server & Workload Protection \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](add-computers.md) \]
- Search for a policy and assign it to a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]
- Get the overrides for a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_override_examples.py) | [Guide](override-policies-computer.md) \]
- Override reconnaissance scans for a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_override_examples.py) | [Guide](override-policies-computer.md) \]
- Block unrecognized software on a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](allow-block-unrecognized-software.md) \]
- Report on agent status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Obtain the Anti-Malware configuration of all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](report-computer-status.md) \]
- Find computers that are not protected against a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Create a scheduled task that discovers computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Create, run, and delete a scheduled task that checks for component updates \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Run the discover computers scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Search using multiple criteria \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search computer sub objects \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search for null values \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Paged results of a computer search \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Generate an agent deployment script \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](api-generate-agent-deploy.md) \]

### Firewall {#firewall}

- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](send-your-first-request-using-api.md) \]
- Configure Firewall for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/firewall_examples.py) | [Guide](configure-firewall-sdk.md) \]
- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-configure-schedules.md) \]
- Retrieve policy settings (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Configure a system setting for a policy (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Set Firewall fail open behavior \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]

### Integrity Monitoring {#integrity-monitoring}

- Add integrity Monitoring rules to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/integrity_monitoring_examples.py) | [Guide](configure-integrity-monitoring-sdk.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]

### Intrusion Prevention (IDS/IPS) {#intrusion-prevention-idsips}

- Configure Intrusion Prevention settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](configure-intrusion-prevention-sdk.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](report-computer-status.md) \]
- Find the Intrusion Prevention rules for a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Find computers that are not protected against a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Search Intrusion Prevention rules based on date updated \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]

### Lists {#lists}

- Add a directory to a directory list \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-modify-lists.md) \]

### Log Inspection {#log-inspection}

- Add a Log Inspection rule to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/log_inspection_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Create a basic Log Inspection rule \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Create a Log Inspection rule using XML \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Reset a subset of rule overrides for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]

### Policies {#policies}

- List Policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_get_examples.py) | [Guide](send-your-first-request-using-api.md) \]
- Create a policy below Base Policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]
- Configure Firewall for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/firewall_examples.py) | [Guide](configure-firewall-sdk.md) \]
- Configure Intrusion Prevention settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](configure-intrusion-prevention-sdk.md) \]
- Set the real time Anti-Malware scan configuration \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/anti_malware_examples.py) | [Guide](configure-anti-malware-sdk.md) \]
- Turn on Web Reputation and configure settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/web_reputation_examples.py) | [Guide](configure-wrs-server-workload.md) \]
- Add integrity Monitoring rules to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/integrity_monitoring_examples.py) | [Guide](configure-integrity-monitoring-sdk.md) \]
- Add a Log Inspection rule to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/log_inspection_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Turn on Application Control \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](config-app-control-policy.md) \]
- Search for a policy and assign it to a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]
- Retrieve policy settings (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Configure a system setting for a policy (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Configure multiple system settings for a policy (Firewall fail open behavior) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Search for policies by name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search using multiple criteria \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search for null values \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Reset a subset of rule overrides for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]

### Recommendations {#recommendations}

- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]

### Reporting {#reporting}

- Get the date of the last recommendation scan \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Report on agent status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
- Obtain the Anti-Malware configuration of all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]

### Roles {#roles}

- Create a role with specific rights \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/role_examples.py) | [Guide](control-access-using-roles.md) \]
- Search for a role \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/role_examples.py) | [Guide](create-api-key-using-code.md) \]
- Change the role for an API key \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/api_key_examples.py) | [Guide](api-keys-after-create.md) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](report-computer-status.md) \]

### Rules {#rules}

- Add integrity Monitoring rules to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/integrity_monitoring_examples.py) | [Guide](configure-integrity-monitoring-sdk.md) \]
- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](send-your-first-request-using-api.md) \]
- Add a Log Inspection rule to a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/log_inspection_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Create a basic Log Inspection rule \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Create a Log Inspection rule using XML \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](config-log-inspection-swp.md) \]
- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-configure-schedules.md) \]
- Retrieve applied Intrusion Prevention rules for all computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](report-computer-status.md) \]
- Find the Intrusion Prevention rules for a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Find computers that are not protected against a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Add Intrusion Prevention rules to computers' policies \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Obtain recommendations for Intrusion Prevention \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](assign-rules-recommendation-scans.md) \]
- Search Intrusion Prevention rules based on date updated \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Reset a subset of rule overrides for a policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]
- Add global Application Control rules \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](add-global-rules.md) \]

### Scheduled tasks {#scheduled-tasks}

- Create a daily schedule for a scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Create a monthly schedule for a scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Create a scheduled task that discovers computers \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Create, run, and delete a scheduled task that checks for component updates \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]
- Run the discover computers scheduled task \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]

### Schedules {#schedules}

- Create a schedule for business hours only \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/common_objects_examples.py) | [Guide](create-configure-schedules.md) \]

### Component updates {#component-updates}

- Create, run, and delete a scheduled task that checks for component updates \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/scheduled_task_examples.py) | [Guide](protection-scheduled-tasks.md) \]

### Search {#search}

- Search Firewall Rules by Name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/first_steps_post_examples.py) | [Guide](send-your-first-request-using-api.md) \]
- Create a policy below Base Policy \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]
- Search for a policy and assign it to a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/policy_examples.py) | [Guide](create-configure-policy.md) \]
- Find the Intrusion Prevention rules for a CVE \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](patch-unprotected-computers.md) \]
- Search for policies by name \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search using multiple criteria \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search Intrusion Prevention rules based on date updated \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search computer sub objects \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Paged results of a computer search \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Search for a role \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/role_examples.py) | [Guide](create-api-key-using-code.md) \]
- Search for null values \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/search_examples.py) | [Guide](search-for-resources.md) \]
- Block unrecognized software on a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/application_control_examples.py) | [Guide](allow-block-unrecognized-software.md) \]

### Settings {#settings}

- Set the maximum number of sessions for users \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](configure-system-settings.md) \]
- Configure Firewall for a policy \[ \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/firewall_examples.py) | [Guide](configure-firewall-sdk.md) \]
- Configure Intrusion Prevention settings \[ \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/intrusion_prevention_examples.py) | [Guide](configure-intrusion-prevention-sdk.md) \]
- Turn on Web Reputation and configure settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/web_reputation_examples.py) | [Guide](configure-wrs-server-workload.md) \]
- Retrieve policy settings (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Configure a setting for a policy (Firewall network engine mode) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Configure multiple settings for a policy (Firewall fail open behavior) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/settings_examples.py) | [Guide](create-configure-policy.md) \]
- Override reconnaissance scans for a computer \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_override_examples.py) | [Guide](override-policies-computer.md) \]
- Set a single system setting (allow agent-initiated activation) \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/automate_deployment_examples.py) | [Guide](configure-system-settings.md) \]

### Web Reputation {#web-reputation}

- Turn on Web Reputation and configure settings \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/web_reputation_examples.py) | [Guide](configure-wrs-server-workload.md) \]
- Report on module status \[ [Python](https://github.com/deep-security/automation-center-sdk-samples/blob/master/python/src/computer_status_examples.py) | [Guide](report-computer-status.md) \]
