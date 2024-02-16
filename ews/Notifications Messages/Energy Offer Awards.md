### Energy Offer Awards

The purpose of this message is to notify a QSE of DAM Energy Offer
Awards.

The following response message structure will be used for Energy Offer
Awards notification:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | created                                        |
| Header/Noun                               | AwardedEnergyOffer                             |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Reply/Timestamp                           | *Current System Timestamp*                     |
| Payload/AwardSet                          | *AwardedEnergyOffer*                           |

The payload structure of this message is shown by the following
diagram:

![AwardedEnergyOffer Structure](../Images/AwardedEnergyOffer_Structure.png)

The table found under the AwardedEnergyOffer Market Info Services section describes each of the
AwardedEnergyOffer elements.

The following is an XML example:

~~~
<ns0:AwardedEnergyOffer>
    <ns0:qse>LUMN</ns0:qse>
    <ns0:startTime>2008-04-30T23:00:00-05:00</ns0:startTime>
    <ns0:endTime>2008-05-01T00:00:00-05:00</ns0:endTime>
    <ns0:tradingDate>2008-04-30</ns0:tradingDate>
    <ns0:marketType>DAM</ns0:marketType>
    <ns0:resource>Resource1</ns0:resource>
    <awardedMWh>126.6</awardedMWh>
    <startType>HOT</startType>
    <combinedCycleName>CC1</combinedCycleName>
</ns0:AwardedEnergyOffer>
~~~
