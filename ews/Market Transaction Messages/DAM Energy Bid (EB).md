### DAM Energy Bid (EB)

The following diagram describes the structure of a DAM Energy Bid:

![DAM Energy Bid Structure](../Images/EnergyBid_Structure.png)

The PriceCurve structure is identical to the structure described
previously in this document. On submission, the following table
describes the items used for an EnergyBid:

<table style="width:100%;">
<colgroup>
<col style="width: 32%" />
<col style="width: 12%" />
<col style="width: 15%" />
<col style="width: 18%" />
<col style="width: 20%" />
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
<td>K</td>
<td>dateTime</td>
<td>Start time for bid</td>
<td>Valid start hour boundary for trade date</td>
</tr>
<tr class="even">
<td>endTime</td>
<td>K</td>
<td>dateTime</td>
<td>End time for bid</td>
<td>Valid end hour boundary for trade date</td>
</tr>
<tr class="odd">
<td>externalId</td>
<td>N</td>
<td>string</td>
<td>External ID</td>
<td>QSE supplied</td>
</tr>
<tr class="even">
<td>expirationTime</td>
<td>Y</td>
<td>dateTime</td>
<td>Time of bid expiration</td>
<td>Valid time before trade date</td>
</tr>
<tr class="odd">
<td>sp</td>
<td>K</td>
<td>string</td>
<td>Settlement point</td>
<td>Valid settlement point name</td>
</tr>
<tr class="even">
<td>bidID<a href="#fn1" class="footnote-ref" id="fnref1"
role="doc-noteref"><sup>1</sup></a></td>
<td>K</td>
<td>string</td>
<td><p>Bid ID</p>
<p>ERCOT’s preference is for QSEs to submit the same Bid/Offer ID for
each hour in the submission, versus submitting a different Bid/Offer ID
for every hour.  The market system treats either submission format the
exact same way.  The purpose of this is to optimize system
performance.</p></td>
<td><p>MP supplied bid ID</p>
<p>Value Restrictions:</p>
<p>Only alpha numeric, “_”(underscore) and “-“(dash) are valid
characters. First and last character should be alpha numeric.</p>
<p>Min Length: 2chars.</p>
<p>Max Length: 12 chars.</p></td>
</tr>
<tr class="odd">
<td>PriceCurve/startTime</td>
<td>Y</td>
<td>dateTime</td>
<td>Start time for curve</td>
<td>Valid hour boundary</td>
</tr>
<tr class="even">
<td>PriceCurve/endTime</td>
<td>Y</td>
<td>dateTime</td>
<td>End time for curve</td>
<td>Valid hour boundary</td>
</tr>
<tr class="odd">
<td>PriceCurve/curveStyle</td>
<td>Y</td>
<td>string</td>
<td>Used as an indicator to describe the type of ‘curve’</td>
<td>FIXED, VARIABLE or CURVE</td>
</tr>
<tr class="even">
<td>PriceCurve/CurveData/xvalue</td>
<td>Y</td>
<td>float</td>
<td>Megawatts</td>
<td>Quantity in MW</td>
</tr>
<tr class="odd">
<td>PriceCurve/CurveData/y1value</td>
<td>Y</td>
<td>float</td>
<td>Price in $/MWh</td>
<td>$/MWh</td>
</tr>
<tr class="even">
<td>PriceCurve/multiHourBlock</td>
<td>N</td>
<td>Boolean</td>
<td>Indicates if offer must be taken as a block for all hours</td>
<td>true or false (default=false)</td>
</tr>
</tbody>
</table>
<aside id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Note that the bidID element isn’t defined with
consistent letter case across all submission and award types. To verify
the letter case, please refer to the corresponding XSD.<a href="#fnref1"
class="footnote-back" role="doc-backlink">↩︎</a></p></li>
</ol>
</aside>

The following is an XML example for an EnergyBid:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-06/nodal/ews" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ercot.com/schema/2007-06/nodal/ews ErcotTransactions.xsd">
	<tradingDate>2008-01-01</tradingDate>
	<EnergyBid>
		<startTime>2008-01-01T00:00:00-05:00</startTime>
		<endTime>2008-01-02T00:00:00-05:00</endTime>
		<marketType>DAM</marketType>
		<expirationTime>2008-01-01T00:00:00-05:00</expirationTime>
		<sp>TNSCLP3___8X</sp>
		<bidID>338601</bidID>
		<PriceCurve>
			<startTime>2008-01-01T00:00:00-05:00</startTime>
			<endTime>2008-01-02T00:00:00-05:00</endTime>
			<curveStyle>CURVE</curveStyle>
			<CurveData>
				<xvalue>41</xvalue>
				<y1value>2790.00</y1value>
			</CurveData>
			<CurveData>
				<xvalue>93</xvalue>
				<y1value>2557.36</y1value>
			</CurveData>
			<CurveData>
				<xvalue>150</xvalue>
				<y1value>2312.44</y1value>
			</CurveData>
			<CurveData>
				<xvalue>197</xvalue>
				<y1value>2108.61</y1value>
			</CurveData>
			<CurveData>
				<xvalue>256</xvalue>
				<y1value>1896.05</y1value>
			</CurveData>
			<CurveData>
				<xvalue>298</xvalue>
				<y1value>1653.97</y1value>
			</CurveData>
			<CurveData>
				<xvalue>353</xvalue>
				<y1value>1383.49</y1value>
			</CurveData>
			<CurveData>
				<xvalue>397</xvalue>
				<y1value>1103.48</y1value>
			</CurveData>
			<CurveData>
				<xvalue>454</xvalue>
				<y1value>905.00</y1value>
			</CurveData>
			<CurveData>
				<xvalue>558</xvalue>
				<y1value>205.00</y1value>
			</CurveData>
			<multiHourBlock>false</multiHourBlock>
		</PriceCurve>
	</EnergyBid>
</BidSet>
~~~

And the corresponding response:>

~~~
<ns1:BidSet xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:tradingDate>2008-06-14</ns1:tradingDate>
    <ns1:EnergyBid>
        <ns1:mRID>AEN.20080614.EB.TNSCLP3___8X.338601</ns1:mRID>
        <ns1:externalId/>
        <ns1:status>ACCEPTED</ns1:status>
        <ns1:error>
            <ns1:severity>INFORMATIVE</ns1:severity>
            <ns1:text>Successfully processed the ERCOT Energy-Only Bid.</ns1:text>
        </ns1:error>
    </ns1:EnergyBid>
</ns1:BidSet>
~~~
