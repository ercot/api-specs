# Market Transaction Service

The purpose of the MarketTransaction Service is to support interfaces
required for market transactions. This section describes the use of web
services by Market Participants as required for bidding processes that
involve the submission, change, and cancellation of bids, trades,
offers, and schedules for specific markets.

On a given trading day, each Market Participant provides information
(using a BidSet) to ERCOT that will be used at the close of the market
to determine awards and obligations and to provide schedules needed for
market operations. Up until the close of the market, a Market
Participant may create, update, or cancel bids, trades, offers, and
schedules. When submitted, ERCOT will validate the submission, reporting
format or submission errors to Market Participants using notification
messages.

## Interfaces Provided 

The interfaces provide the means to create (i.e. submit), get (i.e.
query) and cancel (i.e. withdraw) bids/trades/offers/schedules on a
given trading date. A single container class ‘BidSet’ is used to hold a
set of bids/trades/offers/schedules within the Payload section of the
message, where each of the bids, trades, schedules or offers may be of a
different type.

The following diagram shows an example message sequence, using the
‘verb’ and ‘noun’ convention. Where this section focuses on the requests
made by Market Participant systems to the ERCOT Nodal Web Services, the
sequence diagram also includes notification messages sent from ERCOT to
Market Participant Notification services (as described in section 5).

![Example BidSet Sequence Diagram](./Images/Example_BidSet_Sequence_Diagram.png)

The message sequence example shown involves the following steps:

1.  Market participant sends a RequestMessage for ‘create BidSet’ with
    an initial BidSet to ERCOT for a specific market

2.  In response to step 1, ERCOT performs a simple syntax scan and
    typically sends a ResponseMessage with ReplyCode=OK. In the response
    payload, each bid/offer/trade/schedule will identify a ‘SUBMITTED’
    status and an mRID value. (An alternative example could result in a
    reply of ‘ERRORS’ if the syntax check failed, in which case steps 3
    and 4 would not occur). This reply is synchronous.

3.  ERCOT validates the bids within the BidSet. This could take several
    minutes. This processing is done asynchronously.

4.  A notification message (using verb=changed) is sent to the
    notification interface provided by the Market Participant. The
    status of the bids within the BidSet will indicate whether the
    bid/offer/trade/schedule was PENDING/ACCEPTED or had ERRORS. This
    message will not include the complete BidSet.

5.  When multiple bids are submitted in a large payload, the Market
    Participant will asynchronously receive the notification holding the
    bids status for the "accepted" and "rejected" (in the event of
    ERRORS) bids along with the rejection reason.  As always, MPs may
    make a request to get the current bids within the submitted BidSet
    using a RequestMessage with verb=get. The request may be for
    individual bids using the mRID values, or for the entire set of bids
    within the BidSet using the TradeDate (using short mRIDs).  It will
    return all successful (accepted) bids and not the rejected bids.

6.  If appropriate, reply is sent for get BidSet in step 5.

7.  A Market Participant may choose to cancel one or more bids using a
    RequestMessage with verb=cancel. The mRID is used for cancellation
    of a bid. (See section 2.3.4)

8.  In response to step 7, a ResponseMessage is sent with verb=’reply’.
    This response is synchronous.

9.  The Market Participant may resubmit some bids (e.g. to correct
    errors), to change bids (e.g. change prices) and/or submit new bids,
    using a RequestMessage with verb=change (note that BidSets are a
    special case where the verbs ‘create’ and ‘change’ can be used
    interchangeably).

10. In response to step 9, a ResponseMessage is sent with verb=’reply’.
    This response is synchronous.

11. The newly submitted bids within the BidSet (i.e. the set of bids
    consequential to steps 7 and 9) are validated. This may take
    minutes, and processing is performed asynchronously.

12. As in step 4, a notification message is sent to the Market
    Participant to indicate whether or not the BidSet was validated and
    accepted (with either an ACCEPTED or PENDING state). The
    notification message uses verb=changed.

13. After the close of the market, awards and obligations are
    determined.

14. Market participants are notified of specific awards and/or
    obligations. The notification message uses verb=’created’,
    noun=’AwardSet’.

The following diagram describes the potential state transitions of each
bid/offer/trade/schedule within a BidSet:

![State Diagram for Bids, Trades, Offers and Schedules](./Images/State_Diagram_Bids_Trades.png)

## Interfaces Required 

> The following table describes the parameters used in the request
> message (RequestMessage) for market transactions, noting that each
> transaction has a request and a response message. The verbs create,
> update, get and cancel are respectively used to submit (create or
> change), query and cancel BidSets.

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                                                                                                                                |
|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Header/Verb                               | *create/get/change/cancel*                                                                                                                                     |
| Header/Noun                               | BidSet                                                                                                                                                         |
| Header/Source                             | *Market participant ID*                                                                                                                                        |
| Header/UserID                             | *ID of user*                                                                                                                                                   |
| Payload                                   | BidSet (a single BidSet may be used for create and update request messages, and may optionally be used for get requests to identify specific bids of interest) |

The corresponding response messages (ResponseMessage) would use the
following message fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                                                                                                                                                                   |
|-------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Header/Verb                               | reply                                                                                                                                                                                             |
| Header/Noun                               | BidSet                                                                                                                                                                                            |
| Header/Source                             | ERCOT                                                                                                                                                                                             |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL*                                                                                                                                                    |
| Reply/Error                               | *May be any number of error message if the ReplyCode is ERROR*                                                                                                                                    |
| Reply/Timestamp                           | *The time the submission was received by ERCOT*                                                                                                                                                   |
| Payload                                   | BidSet, where the status of each bid/offer/trade/schedule within the BidSet may be SUBMITTED, PENDING, ACCEPTED, UNCONFIRMED, REJECTED or ERRORS. Specific errors may be identified for each bid. |

> ![IMPORTANT]
> In the cases of payloads that would otherwise exceed 1 megabyte, the
> payloads should be zipped, base64 encoded and stored within the
> ‘Payload/Compressed’ tag.

For the purposes of BidSets, the verbs create and update can be used
interchangeably. Note that only one BidSet is permitted for a given
message, and all transactions within the BidSet must be for the same
trading date.
