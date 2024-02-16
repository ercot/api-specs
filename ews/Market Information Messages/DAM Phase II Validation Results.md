### DAM Phase II Validation Results

This section describes the interface used to retrieve the DAM Phase II
Validation results. The result set will hold the requested Bid Type
Validation results (bid cancellations only) for the specified trading
date.

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
<td>get</td>
</tr>
<tr class="even">
<td>Header/Noun</td>
<td>P2ValidationSet</td>
</tr>
<tr class="odd">
<td>Header/Source</td>
<td><em>Market participant ID</em></td>
</tr>
<tr class="even">
<td>Header/UserID</td>
<td><em>ID of user</em></td>
</tr>
<tr class="odd">
<td>Request/TradingDate</td>
<td><em>Trading date</em></td>
</tr>
<tr class="even">
<td>Request/Option</td>
<td><p><em>BidType of interest</em></p>
<p><em>See below for valid bid types</em></p></td>
</tr>
</tbody>
</table>

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | P2ValidationSet                                |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload                                   | BidSet/\[Bid Type\]                            |

Valid Bid Types are:

| *Valid Bid Type* | *Description*                    |
|------------------|----------------------------------|
| ASOffer          | Ancillary Service Offer          |
| ASTrade          | Ancillary Service Trade          |
| AVP              | Availability Plan                |
| CapacityTrade    | Capacity Trade                   |
| COP              | Current Operating Plan           |
| CRR              | PTP Obligation w/ Link to Option |
| EnergyBid        | DAM Energy Bid                   |
| EnergyOnlyOffer  | DAM Energy-Only Offer            |
| EnergyTrade      | Energy Trade                     |
| IncDecOffer      | Inc Dec Energy Offer             |
| OutputSchedule   | Output Schedule                  |
| PTPObligation    | PTP Obligation Bid               |
| RTMEnergyBid     | Real-Time Market Energy Bid      |
| SelfArrangedAS   | Self-Arranged AS                 |
| SelfSchedule     | Self-Schedule                    |
| ThreePartOffer   | Three Part Supply Offer          |

The payload structure is described by the following diagram:

![DAMPhase2 Structure](../Images/DAMPhase2_BidSet_Structure.png)

The following is an XML example for DAM Phase II validation:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-05/nodal/ews"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">            
    <tradingDate>2008-02-19</tradingDate>
    <ThreePartOffer>
        <mRID>ACME.20080101.TPO.DG_BIOE_2UNITS</mRID>
        <status>CANCELED</status>
        <error>
            <severity>ERROR</severity>                                                
                <text>Validation of the Energy Three Part Offer failed.</text>
        </error>
        <error>
            <severity>ERROR</severity>
            <text>The data required for credit exposure calculation cannot be found</text>
        </error>
    </ThreePartOffer>
</BidSet>
~~~
