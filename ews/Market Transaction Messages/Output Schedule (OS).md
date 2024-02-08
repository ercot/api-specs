### Output Schedule (OS)

An OutputSchedule describes the scheduled output for a resource at 5
minute intervals. The following diagram describes the structure of an
Output Schedule:

![OutputSchedule Structure](../Images/OutputSchedule_Structure.png)

The EnergySchedule structure is identical to the structure described
under the EnergyTrade transaction. On submission, the following table
describes the items used for an OutputSchedule:

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 13%" />
<col style="width: 17%" />
<col style="width: 18%" />
<col style="width: 18%" />
</colgroup>
<thead>
<tr class="header">
<th><em>Element</em></th>
<th><em>Req?</em></th>
<th><em>Datatype</em></th>
<th><em>Description</em></th>
<th><em>Values</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>startTime</td>
<td>N</td>
<td>dateTime</td>
<td>Start time for schedule</td>
<td>Valid 5 minute interval boundary for trade date</td>
</tr>
<tr class="even">
<td>endTime</td>
<td>N</td>
<td>dateTime</td>
<td>End time for schedule</td>
<td>Valid 5 minute interval boundary for trade date</td>
</tr>
<tr class="odd">
<td>externalId</td>
<td>N</td>
<td>string</td>
<td>External ID</td>
<td>QSE supplied</td>
</tr>
<tr class="even">
<td>resource</td>
<td>K</td>
<td>string</td>
<td>Resource</td>
<td>Valid resource name</td>
</tr>
<tr class="odd">
<td>combinedCycle</td>
<td>N</td>
<td>string</td>
<td>Combined cycle</td>
<td>Not required. Value ignored if provided.</td>
</tr>
<tr class="even">
<td>deleteTPOs</td>
<td>N</td>
<td>Boolean</td>
<td>Set to true if three part offers for resource are to be deleted</td>
<td>1 or 0 (default=0)</td>
</tr>
<tr class="odd">
<td>EnergySchedule/startTime</td>
<td>N</td>
<td>dateTime</td>
<td>Not Used</td>
<td>Not Used</td>
</tr>
<tr class="even">
<td>EnergySchedule/endTime</td>
<td>N</td>
<td>dateTime</td>
<td>Not Used</td>
<td>Not Used</td>
</tr>
<tr class="odd">
<td><p>EnergySchedule/</p>
<p>TmPoint/time</p></td>
<td>Y</td>
<td>dateTime</td>
<td>Absolute time for start of interval</td>
<td>Valid time between startTime and endTime for schedule</td>
</tr>
<tr class="even">
<td><p>EnergySchedule/</p>
<p>TmPoint/ending</p></td>
<td>N</td>
<td>dateTime</td>
<td>Absolute time for end of interval</td>
<td>Valid time between startTime and endTime for schedule</td>
</tr>
<tr class="odd">
<td><p>EnergySchedule/</p>
<p>TmPoint/value1</p></td>
<td>Y</td>
<td>float</td>
<td>Megawatts</td>
<td>&gt;= 0</td>
</tr>
</tbody>
</table>

The following is an XML example for an OutputSchedule:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-06/nodal/ews" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ercot.com/schema/2007-06/nodal/ews ErcotTransactions.xsd">
	<tradingDate>2008-01-01</tradingDate>
	<OutputSchedule>
		<startTime>2008-01-01T00:00:00-05:00</startTime>
		<endTime>2008-01-02T00:00:00-05:00</endTime>
		<marketType>DAM</marketType>
		<resource> Resource1</resource>
		<deleteTPOs>true</deleteTPOs>
		<EnergySchedule>
			<TmPoint>
				<time>2008-01-01T00:00:00-05:00</time>
				<ending>2008-01-02T00:00:00-05:00</ending>
				<value1>20</value1>
			</TmPoint>
		</EnergySchedule>
	</OutputSchedule>
</BidSet>
~~~

And the corresponding response:

~~~
<ns1:BidSet xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:tradingDate>2008-06-15</ns1:tradingDate>
    <ns1:OutputSchedule>
        <ns1:mRID>AEN.20080615.OS. Resource1</ns1:mRID>
        <ns1:externalId/>
        <ns1:status>ACCEPTED</ns1:status>
        <ns1:error>
            <ns1:severity>WARNING</ns1:severity>
            <ns1:text>Energy Offer Curve for Resource1 does not exist for cancellation.</ns1:text>
        </ns1:error>
        <ns1:error>
            <ns1:severity>INFORMATIVE</ns1:severity>
            <ns1:text>Successfully processed the ERCOT Output Schedule.</ns1:text>
        </ns1:error>
    </ns1:OutputSchedule>
</ns1:BidSet>
~~~
