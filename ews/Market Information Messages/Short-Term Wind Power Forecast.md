### Short-Term Wind Power Forecast

The purpose of this interface is to provide a query for fetching
short-term wind power forecast (STWPF) for each WGR and STWPF forecast
for all WGRs. This interface will return the last hour data for the
requesting hour-end.

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
<td><em>get</em></td>
</tr>
<tr class="even">
<td>Header/Noun</td>
<td>STWPF</td>
</tr>
<tr class="odd">
<td>Header/Source</td>
<td><em>MARKET PARTICIPANT ID</em></td>
</tr>
<tr class="even">
<td>Header/UserID</td>
<td><em>ID of user</em></td>
</tr>
<tr class="odd">
<td>Request/endTime</td>
<td><em>End time of interest</em></td>
</tr>
<tr class="even">
<td>Request/ID</td>
<td><p><em>Optional: WGR identity</em></p>
<p><em>If No WGR provided then</em> STWPF <em>for all WGRs is
returned</em></p></td>
</tr>
</tbody>
</table>

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>       |
|-------------------------------------------|---------------------------------------|
| Header/Verb                               | *reply*                               |
| Header/Noun                               | STWPF                                 |
| Header/Source                             | *ERCOT*                               |
| Reply/ReplyCode                           | *Reply code, success=OK*              |
| Reply/Error                               | *Error message, if error encountered* |
| Payload/                                  | *STWPF*                               |

The following diagram defines the ForecastPayload structure in the
STWPF response:

![ForecastSet Structure](../Images/ForecastSet_Structure.png)

The following is an abbreviated XML example of a STWPF response:

~~~
<ns1:ForecastPayload xmlns:ns0="http://www.ercot.com/schema/2007-05/nodal/eip/il"
    xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:ForecastSet>
        <ns1:Site duns="1234567890000" name="WIND_1" qseid="QSE1">SITE1</ns1:Site>
        <ns1:Created>2016-01-14T09:10:59-06:00</ns1:Created>
        <ns1:AnalogValue statistic="MEAN" timeStamp="2016-01-14T10:00:00-06:00" type="STWPF"
            units="MW">1.6E0</ns1:AnalogValue>
    </ns1:ForecastSet>
    <ns1:ForecastSet>
        <ns1:Site duns="1234567890000" name="WIND_2" qseid="QSE1">SITE2</ns1:Site>
        <ns1:Created>2016-01-14T09:10:59-06:00</ns1:Created>
        <ns1:AnalogValue statistic="MEAN" timeStamp="2016-01-14T10:00:00-06:00" type="STWPF"
            units="MW">2.7E0</ns1:AnalogValue>
    </ns1:ForecastSet>
</ns1:ForecastPayload>
~~~

