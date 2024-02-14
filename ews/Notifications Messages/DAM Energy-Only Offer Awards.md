### DAM Energy-Only Offer Awards

The purpose of this message is to notify a QSE of DAM Energy-Only Offer Awards.

The following response message structure will be used for Energy Only
Offer Awards notification:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | created                                        |
| Header/Noun                               | AwardedEnergyOnlyOffer                         |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Reply/Timestamp                           | *Current System Timestamp*                     |
| Payload/AwardSet                          | AwardedEnergyOnlyOffer                         |

The payload structure of this message is shown by the following
diagram:

![AwardedEnergyOnlyOffer Structure](../Images/AwardedEnergyOnlyOffer_Structure.png)

The table found in the corresponding Market Information Services section describes
the AwardedEnergyOnlyOffer elements.

The following is an XML example:

~~~
<ns0:AwardedEnergyOnlyOffer>
    <ns0:qse>LUMN</ns0:qse>
    <ns0:startTime>2008-04-30T00:00:00-05:00</ns0:startTime>
    <ns0:endTime>2008-04-30T01:00:00-05:00</ns0:endTime>
    <ns0:tradingDate>2008-04-30</ns0:tradingDate>
    <ns0:marketType>DAM</ns0:marketType>
    <ns0:awardedMWh>3</ns0:awardedMWh>
    <ns0:bidId>456</ns0:bidId>
    <ns0:sp>123</ns0:sp>
</ns0:AwardedEnergyOnlyOffer>
~~~
