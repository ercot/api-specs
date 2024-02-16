### CRR Awards

The purpose of this message is to notify a QSE of DAM CRR Awards.

The following response message structure will be used for CRR Awards
notification:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | created                                        |
| Header/Noun                               | AwardedCRR                                     |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Reply/Timestamp                           | *Current System Timestamp*                     |
| Payload/AwardSet                          | *AwardedCRR*                                   |

The payload structure of this message is shown by the following
diagram:
 
![AwardedCRR Structure](../Images/AwardedCRR_Structure.png) 

The following is an XML example:

~~~
<ns0:AwardedCRR>
    <ns0:qse>LUMN</ns0:qse>
    <ns0:startTime>2008-04-30T00:00:00-05:00</ns0:startTime>
    <ns0:endTime>2008-04-30T01:00:00-05:00</ns0:endTime>
    <ns0:tradingDate>2008-04-30</ns0:tradingDate>
    <ns0:marketType>DAM</ns0:marketType>
    <ns0:awardedMW>3</ns0:awardedMW>
    <ns0:price>0</ns0:price>
    <ns0:source>BBSES_UNIT1</ns0:source>
    <ns0:sink>BBSES_UNIT2</ns0:sink>
    <ns0:crrId>12345</ns0:crrId>
    <ns0:offerId>1234</ns0:offerId>
</ns0:AwardedCRR>
~~~

