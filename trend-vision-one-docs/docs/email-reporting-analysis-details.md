---
slug: trend-vision-one-email-reporting-analysis-details
title: Analysis details on user-reported emails
---

Understand how suspicious a user-reported email is and take appropriate mitigation, remediation, and prevention actions based on detailed analysis.

The analysis details page provides administrators with a comprehensive view of each reported email. From previewing the message and reviewing its classification (such as phishing, spam, or flagged) to identifying top suspicious indicators, administrators can assess the nature of the threat. The screen also enables targeted mitigation of similar historical emails and provides remediation and prevention measures to block future threats. By using this screen, security teams can respond more efficiently to user-reported threats, reduce manual effort, and strengthen protection across the organization.

[Learn more](email-reporting-best-practice.md) about the best practice for using the user-reported email analysis and response feature.

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><p>Section</p></th>
<th><p>Description and Setting</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Email preview</p></td>
<td><p>Preview a reported email to examine its basic details, attachments, and body content.</p>
<ol>
<li><p>Click <strong>View email</strong> next to the subject line of the reported email</p></li>
<li><p>In the <strong>Email details</strong> screen, review key information including the sender, recipient, reporter, message ID, and attachment names.</p>
<p>The attachment list displays only the first 10 attachments.</p></li>
<li><p>Use the <strong>HTML</strong> or <strong>Plain text</strong> tab to view the email body in your preferred format.</p></li>
</ol></td>
</tr>
<tr>
<td><p>Analysis result</p></td>
<td><p>View the analysis result of a reported email, including its classification (phishing, spam, or flagged), a summary of its suspicious characteristics, and the top suspicious indicators during analysis.</p></td>
</tr>
<tr>
<td><p>Mitigation</p></td>
<td><p>View historical emails identified as posing similar threats or risks based on shared indicators found in a reported email.</p>
<p>Depending on your configured setting in <a href="trend-vision-one-email-reporting">Email reporting</a>, the system can apply security actions automatically or allow manual control</p>
<ul>
<li><p>Automated actions</p>
<p>The system automatically takes action on an identified email, moving spam to the Junk Email folder or quarantining phishing emails.</p>
<p>Click <strong>Details</strong> under <strong>Result</strong> to view mitigation logs, and click the number under <strong>Affected users</strong> to see who else received the email.</p></li>
<li><p>Manual actions</p>
<p>The system lists identified emails with basic details and recommended actions. You can apply the action individually or in batches.</p>
<p>After mitigation, click <strong>Details</strong> under <strong>Result</strong> to view mitigation logs, and click the number under <strong>Affected users</strong> to see who else received the email.</p></li>
</ul>
<p>A progress bar shows real-time status updates.</p>
<p>To launch a phishing simulation for affected users, click the three-dot menu at the end of each item and select <strong>Create Security Awareness Training</strong>, the follow the instructions.</p></td>
</tr>
<tr>
<td><p>Remediation and prevention</p></td>
<td><p>View the remediation and prevention measures that the system automatically implements or offers for manual control, based on your configuration in <a href="trend-vision-one-email-reporting">Email reporting</a>.</p>
<ul>
<li><p>Automated actions</p>
<p>The system automatically enriches Correlated Intelligence correlation rules to block similar phishing threats and updates anti-spam patterns to catch related unwanted messages. With Correlated Intelligence and Advanced Spam Protection enabled in policy, these enhancements are applied automatically, strengthening detection coverage and reducing manual effort.</p>
<p>A progress bar shows real-time status updates.</p></li>
<li><p>Manual actions</p>
<p>The system identifies the most relevant object from the reported email, such as the sender address, sender domain, URL, or URL domain, and allows you to add it to a monitored list managed by Correlated Intelligence.</p>
<p>Once added, a detection signal is automatically generated for the object type with a name <strong>Monitored &lt;object type&gt; from User-Reported Emails</strong>. These signals contribute to a system-generated correlation rule <strong>User-Report Driven Threat Detection</strong> that helps detect other emails containing the same monitored object. For details about how correlation rules and detection signals work, see <a href="trend-vision-one-correlation-rules-detect">Viewing correlation rules and detection signals</a>.</p>
<p>To manage these detection signals, go to <strong>Policies → Global Settings → Correlated Intelligence → Correlation Rules and Detection Signals</strong> and locate them on the <strong>Detection Signals</strong> tab. You can find all the objects you add in the analysis details screen.</p>
<p>To prevent future risks, go to your <strong>Advance Threat Protection</strong> policy settings and add <strong>User-Report Driven Threat Detection</strong> as a custom rule under <strong>Correlated Intelligence</strong>.</p></li>
</ul></td>
</tr>
</tbody>
</table>
