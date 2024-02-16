### UnconfirmedTrades 

This section describes interfaces used to retrieve the list if trades
that the submitting QSE have been identified as the counter party in a
trade, but have not yet entered a matching energy, capacity, or
ancillary services trade. If a matching trade is not entered by the
close of the market, the trade is rejected.

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | get                             |
| Header/Noun                               | UnconfirmedTrades               |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |
| Request/TradingDate                       | *Trading date*                  |

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | UnconfirmedTrades                              |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload                                   | UnconfirmedTrades                              |

The payload structure is described by the following diagram:

![UnconfirmedTrades Structure](../Images/UnconfirmedTrades_Structure.png)

The details of the structures for ASTrades, CapacityTrades, and
EnergyTrades are described in sections 3.3.5, 3.3.6, and 3.3.12,
respectively. The following is an XML of an unconfirmed trade’s
payload:

~~~
<UnconfirmedTrades>
    <ASTrade>
        <mRID>ACME.20080101.AST.*ASType*.*BuyerQSE*.*SellerQSE*></mRID>
    </ASTrade>
    <CapacityTrade>
        <mRID>XYZ.20080101.CT.*BuyerQSE*.*SellerQSE*></mRID>
    </CapacityTrade>
    <EnergyTrade>
        <mRID>ACME.20080101.ET.*SettlementPoint*.*BuyerQSE*.*SellerQSE*></mRID>
    </EnergyTrade>
</UnconfirmedTrades>
~~~

The mRID used in the message is the mRID for the trade that was
submitted by the counterparty.
