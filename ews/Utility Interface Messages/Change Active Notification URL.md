### Change Active Notification URL

The purpose of this interface is to provide the means to request that
ERCOT send notifications to the defined PRIMARY or BACKUP URL. This
interface does NOT allow a specific URL to be specified. The following
table describes the request parameters:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>        |
|-------------------------------------------|----------------------------------------|
| Header/Verb                               | Change                                 |
| Header/Noun                               | ActiveNotificationURL                  |
| Header/Source                             | *Market participant ID*                |
| Header/UserID                             | *ID of user*                           |
| Request/Option                            | *See table below for a list of values* |

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<thead>
<tr class="header">
<th>Option Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Primary</td>
<td><p>Deprecated - will remove in a future release</p>
<p>Change Public URL to Primary</p></td>
</tr>
<tr class="even">
<td>Backup</td>
<td><p>Deprecated - will remove in a future release</p>
<p>Change Public URL to Secondary</p></td>
</tr>
<tr class="odd">
<td>PublicPrimary</td>
<td>Change Public URL to Primary</td>
</tr>
<tr class="even">
<td>PublicBackup</td>
<td>Change Public URL to Secondary</td>
</tr>
<tr class="odd">
<td>WANPrimary</td>
<td>Change WAN URL to Primary</td>
</tr>
<tr class="even">
<td>WANBackup</td>
<td>Change WAN URL to Secondary</td>
</tr>
<tr class="odd">
<td>AllPrimary</td>
<td>Change both Public and WAN URLs to Primary</td>
</tr>
<tr class="even">
<td>AllBackup</td>
<td>Change both Public and WAN URLs to Secondary</td>
</tr>
</tbody>
</table>

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>       |
|-------------------------------------------|---------------------------------------|
| Header/Verb                               | reply                                 |
| Header/Noun                               | ActiveNotificationURL                 |
| Header/Source                             | ERCOT                                 |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR* |
| Reply/Error                               | *Error message, if error encountered* |
| Reply/Timestamp                           | *Identifies current ERCOT local time* |

