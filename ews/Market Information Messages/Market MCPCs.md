### Market MCPCs

The purpose of this interface is to provide a query for MCPCs, for
either the DAM or SASM market. Specific SASM ID is needed for SASM
market type.

The request message would use the following message fields:

<table>
<colgroup>
<col style="width: 34%" />
<col style="width: 65%" />
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
<td>get</td>
</tr>
<tr class="even">
<td>Header/Noun</td>
<td>MCPCs</td>
</tr>
<tr class="odd">
<td>Header/Source</td>
<td><em>Market participant ID</em></td>
</tr>
<tr class="even">
<td>Header/UserID</td>
<td><em>ID of user</em></td>
</tr>
<tr class="odd">
<td>Request/MarketType</td>
<td><em>DAM or SASM</em></td>
</tr>
<tr class="even">
<td>Request/TradingDate</td>
<td><em>Trading date</em></td>
</tr>
<tr class="odd">
<td>Request/Option</td>
<td><p><em>Optional: SASM ID (required for SASM)</em></p>
<p><em>Format: YYYYMMDDHHMMSS</em></p></td>
</tr>
</tbody>
</table>

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | MCPCs                                          |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload/                                  | *MCPCs*                                        |

The following diagram describes the structure of MCPCs:

![MCPCs Structure](../Images/MCPCs_Structure.png)

Within each MCPCSchedule, an asType is specified and the values of
‘value1’ convey individual MCPC values.

The following is an XML example:

~~~
<ns1:MCPCs xmlns:ns0="http://www.ercot.com/schema/2007-05/nodal/eip/il"
    xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:MCPCSchedule>
        <ns1:time>2023-04-07T00:00:00-05:00</ns1:time>
        <ns1:ending>2023-04-07T01:00:00-05:00</ns1:ending>
        <ns1:value1>0.0</ns1:value1>
        <ns1:asType>ECRS</ns1:asType>
        <ns1:marketType>DAM</ns1:marketType>
    </ns1:MCPCSchedule>
    <ns1:MCPCSchedule>
        <ns1:time>2023-04-07T00:00:00-05:00</ns1:time>
        <ns1:ending>2023-04-07T01:00:00-05:00</ns1:ending>
        <ns1:value1>0.01</ns1:value1>
        <ns1:asType>Non-Spin</ns1:asType>
        <ns1:marketType>DAM</ns1:marketType>
    </ns1:MCPCSchedule>
    <ns1:MCPCSchedule>
        <ns1:time>2023-04-07T00:00:00-05:00</ns1:time>
        <ns1:ending>2023-04-07T01:00:00-05:00</ns1:ending>
        <ns1:value1>3.69</ns1:value1>
        <ns1:asType>Reg-Down</ns1:asType>
        <ns1:marketType>DAM</ns1:marketType>
    </ns1:MCPCSchedule>
    <ns1:MCPCSchedule>
        <ns1:time>2023-04-07T00:00:00-05:00</ns1:time>
        <ns1:ending>2023-04-07T01:00:00-05:00</ns1:ending>
        <ns1:value1>4.0</ns1:value1>
        <ns1:asType>Reg-Up</ns1:asType>
        <ns1:marketType>DAM</ns1:marketType>
    </ns1:MCPCSchedule>
    <ns1:MCPCSchedule>
        <ns1:time>2023-04-07T00:00:00-05:00</ns1:time>
        <ns1:ending>2023-04-07T01:00:00-05:00</ns1:ending>
        <ns1:value1>12.0</ns1:value1>
        <ns1:asType>RRS</ns1:asType>
        <ns1:marketType>DAM</ns1:marketType>
    </ns1:MCPCSchedule>
</ns1:MCPCs>
~~~

