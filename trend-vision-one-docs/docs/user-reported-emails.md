---
slug: trend-vision-one-user-reported-emails
title: User-reported emails
---

View the emails that are reported by your users, their analysis results, and the mitigation or remediation measures that you can take.

Cloud Email and Collaboration Protection provides you visibility into the emails that your users report as a spam, phishing, or not a risk through the add-in for Outlook or the warning banner in anomalous emails detected by predefined correlation rules in Correlated Intelligence. On the **User-Reported Emails** screen, you can get the volume and variety of the reported emails and view the details of each report email.

Cloud Email and Collaboration Protection automatically analyzes each reported email to decide whether it poses a threat or contains indicators that warrant further attention. Based on the analysis result and your configured settings in [Email reporting](email-reporting.md), the system provides detailed insights and manual or automated security actions to mitigate similar treats already present in your environment and help prevent future risks.

If you have multiple organizations, select an organization to view data.

The following table details the options available on the **User-Reported Emails** screen.

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><p>Option</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>View email reporting summary</p></td>
<td><ul>
<li><p>Total reported emails and their approval status</p></li>
<li><p>Total emails reported as spam, phishing, or not a risk</p></li>
<li><p>Total emails with their analysis result</p></li>
</ul>
<p>You can select a time range to view the data. Both the pie chart and the line chart are available.</p></td>
</tr>
<tr>
<td><p>View details on reported emails</p></td>
<td><p>Details about each reported email, including the reporting time, subject, reported type. In this section, you can perform the following operations on the reported emails:</p>
<ul>
<li><p>Filter emails: Select the time range and then click an item in facets such as <strong>Approved status</strong> or <strong>Reported type</strong>. Specify the email subject, and press ENTER.</p>
<p>You can also click the filter icon (<img src="./images/filter_icon=GUID-8AF1810B-6950-4A79-A542-9261DDF25F39=en-us=.webp" />) to add more criteria.</p>
<p>If you expect that the emails reported by end users should be manually approved before sent to Trend Micro, enable email reporting approval. For details, see <a href="trend-vision-one-email-reporting">Email reporting</a>.</p></li>
<li><p>Download emails: Select one or multiple emails and click <strong>Download</strong>.</p></li>
<li><p>Approve/reject reporting: Click the three dots at the end of each email item, and then select whether to allow sending a reported email to Trend Micro.</p></li>
<li><p>Add sender to Block List: Click the three dots at the end of each email item, and then select <strong>Add to Block List</strong> if you want to add the sender address of a reported email to the block list of Trend Vision One.</p></li>
</ul></td>
</tr>
<tr>
<td><p>View analysis results</p></td>
<td><p>Whether a reported email is confirmed as phishing or spam after automatic analysis</p>
<ul>
<li><p>View the analysis progress and result:</p>
<ul>
<li><p><strong>In progress</strong>: The analysis has not finished yet.</p></li>
<li><p><strong>Completed - Phishing</strong>: The analysis is completed and the email is confirmed as phishing.</p></li>
<li><p><strong>Completed - Spam</strong>: The analysis is completed and the email is confirmed as spam.</p></li>
<li><p><strong>Completed - Flagged</strong>: The analysis is completed and the reported email is not confirmed as phishing or spam, but it contains indicators that warrant further attention.</p></li>
</ul>

:::note

<p>Currently, automatic analysis applies only to emails that are reported by your users as <strong>Phishing</strong> or <strong>Spam</strong>.</p>

:::

</li>
<li><p>View analysis details: Click the reporting time under <strong>Reported</strong> or <strong>Manual mitigation required</strong> (if manual security actions is enabled under <a href="trend-vision-one-email-reporting">Email reporting</a>) to open the analysis details screen. For details, see <a href="trend-vision-one-email-reporting-analysis-details">Analysis details on user-reported emails</a>.</p></li>
</ul></td>
</tr>
<tr>
<td><p>Apply security actions</p></td>
<td><p>Automated or manual security actions that Cloud Email and Collaboration Protection or you take on identified emails for threat mitigation, remediation, and prevention</p>
<p>Security actions are available only after automatic analysis is completed.</p>
<ul>
<li><p>View whether security actions for mitigation have started or completed under <strong>Security actions</strong>.</p>
<p>To view the progress on automated remediation and prevention, click the reporting time under <strong>Reported</strong> to open the analysis details screen.</p></li>
<li><p>Apply security actions: If manual security actions is enabled under <a href="trend-vision-one-email-reporting">Email reporting</a>, click <strong>Manual mitigation required</strong> under <strong>Security actions</strong> to open the analysis details screen. You can apply mitigation actions to historical emails that are identified as posing similar threats or risks to the reported email. Additionally, you can take remediation and prevention actions by adding the most relevant object from the reported email, such as a sender or URL, to the appropriate monitored list managed by Correlated Intelligence.</p></li>
</ul>
<p>For details, see <a href="trend-vision-one-email-reporting-analysis-details">Analysis details on user-reported emails</a>.</p></td>
</tr>
</tbody>
</table>

**Related information**

- [Analysis details on user-reported emails](email-reporting-analysis-details.md "Understand how suspicious a user-reported email is and take appropriate mitigation, remediation, and prevention actions based on detailed analysis.")
- [Best practice for user-reported email analysis and response](email-reporting-best-practice.md "Follow this end-to-end best practice guide to effectively use the user-reported email analysis and response feature, helping security teams streamline threat triage, apply actions confidently, and strengthen email protection.")
