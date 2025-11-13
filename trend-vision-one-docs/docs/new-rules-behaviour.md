---
slug: trend-vision-one-new-rules-behaviour
title: New rules behaviour
---

Cloud Risk Management regularly adds new rules as AWS adds and makes changes to services on their platform to ensure our offering covers the most regularly used services and potential vulnerabilities on the AWS cloud platform. You have the ability to choose whether new rules are turned on automatically or manually.

<table>
<thead>
<tr>
<th><p><em>Dropdown</em></p></th>
<th><p><em>Information</em></p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Organisation default</p></td>
<td><p>Use organisation default new rules behaviour for this account</p></td>
</tr>
<tr>
<td><p>Automatically enable new rules</p></td>
<td><p>New rules are enabled by default when they are released by Cloud Risk Management</p></td>
</tr>
<tr>
<td><p>Manually enable new rule</p></td>
<td><p>New rules are not automatically enabled and need to be manually enabled to become active. <em>New rules are any rules introduced after</em> - Any rules released after this set date will be treated as new rules by Cloud Risk Management.</p></td>
</tr>
</tbody>
</table>

### FAQs {#faqs}

*Does the 'New rules behaviour settings' apply to a newly added account?*

When you add a new cloud account to an organisation, we compare the account creation date and the Rule release date. If the account creation date is after the Rule release date, we do not consider them for the New rules behaviour and all new rules are enabled for the newly added account.
