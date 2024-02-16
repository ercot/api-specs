### AwardedPTPObligation

The Get AwardedPTPObligation interface provides the means for a market
participant to obtain PTPObligation awards. The following parameters
are specified in the RequestMessage:

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | get                             |
| Header/Noun                               | AwardedPTPObligation            |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |
| Request/TradingDate                       | *Trading date*                  |

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | AwardedPTPObligation                           |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload/AwardSet                          | *AwardedPTPObligation*                         |

An AwardedPTPObligation is returned in the payload of the
ResponseMessage using the following structure:

![AwardedPTPObligation Structure](../Images/AwardedPTPObligation_Structure.png)

The following table describes the AwardedPTPObligation Offer elements.

| *Element*   | *Datatype* | *Description*            | *Values*                    |
|-------------|------------|--------------------------|-----------------------------|
| qse         | string     | Participant ID           |                             |
| startTime   | DateTime   | Start time for the award | Valid award dateTime        |
| endTime     | DateTime   | End time for the award   | Valid award dateTime        |
| tradingDate | Date       | Award date               | Valid award date            |
| marketType  | string     | Market type              | DAM                         |
| awardedMW   | Float      | Awarded quantity         | Awarded MW                  |
| source      | string     | Source settlement point  | Valid settlement point name |
| sink        | string     | Sink settlement point    | Valid settlement point name |
| price       | Float      | Awarded Price            |                             |
| bidId<sup>[1]</sup>   | string     | Bid ID                   | MP supplied bid ID          |

The following is an XML example:

~~~
<AwardSet>
    <tradingDate>2008-04-30</tradingDate>
    <marketType>DAM</marketType>
    <AwardedPTPObligation>
        <qse>LUMN</qse>
        <startTime>2008-04-30T00:00:00-05:00</startTime>
        <endTime>2008-04-30T01:00:00-05:00</endTime>
        <tradingDate>2008-04-30</tradingDate>
        <marketType>DAM</marketType>
        <awardedMW>0</awardedMW>
        <source>BBSES_UNIT1</source>
        <sink>LZ_NORTH</sink>
        <price>0</price>
        <bidId>01</bidId>
    </AwardedPTPObligation>
</AwardSet>
~~~

<sup>[1]</sup> Note that the bidID element isn’t defined with consistent letter
    case across all submission and award types. To verify the letter
    case, please refer to the corresponding XSD.
