### Real-Time Market Energy Bid (REB)

The following diagram describes the structure of a Real-Time Market
Energy Bid:

![Real Time Market Energy Bid Structure](../Images/RTMEnergyBid_Structure.png)

The PriceCurve structure is identical to the structure described
in the Services Organization section. On submission, the following table
describes the items used for an RTMEnergyBid:

| *Element*                    | *Req?* | *Datatype* | *Description*          | *Values*                                 |
|------------------------------|--------|------------|------------------------|------------------------------------------|
| startTime                    | K      | dateTime   | Start time for bid     | Valid start hour boundary for trade date |
| endTime                      | K      | dateTime   | End time for bid       | Valid end hour boundary for trade date   |
| externalId                   | N      | string     | External ID            | QSE supplied                             |
| expirationTime               | Y      | dateTime   | Time of bid expiration | Valid time during the trade date         |
| Resource                     | K      | string     | Resource               | Valid resource name                      |
| PriceCurve/startTime         | Y      | dateTime   | Start time for curve   | Valid hour boundary                      |
| PriceCurve/endTime           | Y      | dateTime   | End time for curve     | Valid hour boundary                      |
| PriceCurve/CurveData/xvalue  | Y      | float      | Megawatts              | Quantity in MW                           |
| PriceCurve/CurveData/y1value | Y      | float      | Price in \$/MWh        | \$/MWh                                   |

The following is an XML example for an EnergyBid:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-06/nodal/ews">
    <tradingDate>2014-04-01</tradingDate>
    <RTMEnergyBid xmlns="http://www.ercot.com/schema/2007-06/nodal/ews"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <startTime>2014-04-01T00:00:00-05:00</startTime>
        <endTime>2014-04-02T00:00:00-05:00</endTime>
        <expirationTime>2014-04-02T00:00:00-05:00</expirationTime>
        <resource>RESOURCE_1</resource>
        <PriceCurve>
            <startTime>2014-04-01T00:00:00-05:00</startTime>
            <endTime>2014-04-02T00:00:00-05:00</endTime>
            <CurveData>
                <xvalue>0</xvalue>
                <y1value>250.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>10</xvalue>
                <y1value>225.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>20</xvalue>
                <y1value>220.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>30</xvalue>
                <y1value>215.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>40</xvalue>
                <y1value>200.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>50</xvalue>
                <y1value>185.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>60</xvalue>
                <y1value>160.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>70</xvalue>
                <y1value>145.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>80</xvalue>
                <y1value>130.00</y1value>
            </CurveData>
            <CurveData>
                <xvalue>90</xvalue>
                <y1value>115.00</y1value>
            </CurveData>
        </PriceCurve>
    </RTMEnergyBid>
</BidSet>
~~~

And the corresponding response:

~~~
<ns2:BidSet xmlns:ns2="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns2:tradingDate>2014-04-01</ns2:tradingDate>
    <ns2:submitTime>2014-03-27T16:24:23.797-05:00</ns2:submitTime>
    <ns2:RTMEnergyBid>
        <ns2:mRID>QSE1.20140401.REB.RESOURCE_1</ns2:mRID>
        <ns2:externalId/>
        <ns2:status>ACCEPTED</ns2:status>
        <ns2:error>
            <ns2:severity>INFORMATIVE</ns2:severity>
            <ns2:text>Successfully processed the ERCOT Real-Time Market Energy Bid.</ns2:text>
        </ns2:error>
    </ns2:RTMEnergyBid>
</ns2:BidSet>
~~~
