# Get SASM ID List

> The purpose of this interface is to provide the means to request that
> ERCOT send a list of SASM Market IDs for a given trading date. The
> following table describes the request parameters:

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | Get                             |
| Header/Noun                               | SASMIDList                      |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |
| Request/TradingDate                       | *Trading Date*                  |

Figure 189 – Get SASM ID Request

The corresponding response messages would use the following message
fields:

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 64%" />
</colgroup>
<thead>
<tr class="header">
<th><mark>Message Element</mark></th>
<th><mark>Value</mark></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Header/Verb</td>
<td>reply</td>
</tr>
<tr class="even">
<td>Header/Noun</td>
<td>SASMIDList</td>
</tr>
<tr class="odd">
<td>Header/Source</td>
<td>ERCOT</td>
</tr>
<tr class="even">
<td>Reply/ReplyCode</td>
<td><em>Reply code, success=OK, error=ERROR</em></td>
</tr>
<tr class="odd">
<td>Reply/Error</td>
<td><em>Error message, if error encountered</em></td>
</tr>
<tr class="even">
<td>Reply/Timestamp</td>
<td><em>Identifies current ERCOT local time</em></td>
</tr>
<tr class="odd">
<td>Reply/ID</td>
<td><p><em>SASM IDs found for the requested Trading Date</em></p>
<p><em>Format: YYYYMMDDHHMMSS</em></p></td>
</tr>
</tbody>
</table>

Figure 190 – Get SASM ID Response
