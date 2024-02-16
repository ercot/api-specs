### Two Hour Warning Results

This section describes the interface used to retrieve the two hour
warning results. The result set will hold the Output Schedule
Validation results (errors and warnings) for the specified trading
date and the end hour.

The request message would use the following message fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>        |
|-------------------------------------------|----------------------------------------|
| Header/Verb                               | get                                    |
| Header/Noun                               | TwoHrNotif                             |
| Header/Source                             | *Market participant ID*                |
| Header/UserID                             | *ID of user*                           |
| Request/TradingDate                       | *Trading date*                         |
| Request/Option                            | *End of Adjustment Period Hour Ending* |

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | TwoHrNotif                                     |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload                                   | BidSet/OutputSchedule                          |

The payload structure is described by the following diagram:

![OutputSchedule Structure](../Images/OutputSchedule_Structure.png)

The following is an XML example for Two Hour Warning results:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-05/nodal/ews"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <tradingDate>2008-01-01</tradingDate>
    <OutputSchedule>
        <mRID>ACME.20080101.OS.Resource1</mRID>
        <status>ACCEPTED</status>
        <error>
            <ns1:severity>WARNING</ns1:severity>
            <text>Five-minute intervals beginning 21:10 through interval 22:0 conflict with existing
                Energy Offer Curve</text>
        </error>
        <error>
            <ns1:severity>INFORMATIVE</ns1:severity>
            <text>Successfully validated the ERCOT Output Schedule.</text>
        </error>
        <error>
            <ns1:severity>WARNING</ns1:severity>
            <text>The Output Schedule exists for hour ending 22 where resource status is OFF </text>
        </error>
    </OutputSchedule>
</BidSet>
~~~

