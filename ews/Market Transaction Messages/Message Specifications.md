## Message Specifications

A BidSet is the payload type used for the submission, query, and
cancellation of bids and offers, and serves as a container for the
different types of bids, offers, trades and scheduled that are submitted
by a QSE for a given trading day. A BidSet identifies the trading date
and Market Participant with a sequence of any number of bids, trades,
offers, and schedules.

The header of a BidSet is shown in the following diagram:

> <img src="media/image1.png" style="width:3.69792in;height:2.5in"
> alt="tpo" />

Figure 15 - BidSet Header Structure

An important note is that the BidSet uses an XSD sequence, requiring
each type of bid, trade, offer, or schedule to be provided in a specific
order. Please reference the XML Schema for the correct order.

The submission (using ’create’ verb and ‘BidSet’ noun in the message
header) of a BidSet by a Market Participant will have the effect of
either creating new bids (or offers, schedules, trades, etc.) for a
given trading date, or overwriting existing bids that were previously
submitted for a given BidSet for a given trading day.

Additionally, bids, offers, trades, and schedules may be submitted in
partial batches, where more than one BidSet is submitted for a given
trading day. When this is done, new bids are aggregated with previously
submitted bids and updates to previously submitted bids overwrite the
previous bid. The following sequence describes the aggregation of
BidSets:

1.  A first BidSet is submitted by a market participant for a trading
    day, with bids 1, 2, 3, 4.

2.  A second BidSet is submitted by the market participant for the day
    with bids 5, 6, 7, 8.

3.  The market participant ‘get’s the BidSet for the day, the reply
    returns the details of bids 1-8.

4.  The market participant submits a cancel for bid 1.

5.  A third BidSet is submitted by the market participant for the day,
    where there are updates to bids 5 and 7, as well as a new bid 9

6.  The market participant ‘get’s the BidSet for the day, the reply
    returns the details of bids 2-9.

In order to cancel a bid, a BidSet must be sent using the ‘cancel’ verb,
with the specific bids to be cancelled identified within the BidSet.
Cancel can only be used to cancel specific bids, not a whole BidSet for
a given market.

In order to query a BidSet, A BidSet is sent using the ‘get’ verb, where
the desired bids for the specific BidSet are identified. There are then
two options:

1.  If no bids are identified within the BidSet, all bids for the
    particular trading date will be returned in the BidSet in the
    response message.

2.  If specific bids are identified within the BidSet, only the details
    of the specified bids will be returned in the BidSet in the response
    message.

When a BidSet is returned by a ‘get’ request for a given trade date, the
status value of each in the BidSet is populated. Values could include:

- SUBMITTED (to indicate submission, but no further processing has been
  completed)

- ACCEPTED (to indicate successful validation and acceptance of the
  transaction)

- UNCONFIRMED (to indicate a trade that is not yet confirmed, once
  confirmed it would go to the ACCEPTED state)

- PENDING (to indicate a transaction that is not yet accepted, as it may
  be submitted for a day after the next trading date or the second phase
  of validation within MMS has not yet completed)

- REJECTED (to indicate a transaction that has been rejected)

- CANCELED (to indicate a transaction was canceled, this can not be
  retrieved by a get)

- ERRORS (to indicate that there are one or more errors for the
  transaction)

> Additionally the “Submit Time” is returned with the response to a bid
> retrieval request, indicating the bid receipt timestamp by ERCOT. 
> Submit timestamp is an output only field and if populated by the
> submitter on the bid creation request, it will be overwritten by the
> ERCOT Integration layer at the time it is received (and returned via
> bid retrieval).
>
> The following sub sections describe the structure of specific bid,
> offer, trade, and schedule types. Typically each
> bid/offer/trade/schedule will have a set of properties that along with
> the type of bid/offer/trade/schedule makes it unique (see section
> 2.3.3). Typically these would include:

- Bid, offer, schedule or trade type

- Resource

- Ancillary Service type

> When submitting a bid/offer/schedule/trade using create or update, all
> properties for the bid must be specified. When performing a get or
> cancel request, only those parameters that uniquely identify the
> bid/offer/trade/schedule must be specified through the use of an mRID.
> The following diagram shows information commonly maintained for each
> type of bid/offer/trade/schedule. The status for a given
> bid/offer/trade/schedule may be SUBMITTED, PENDING, ACCEPTED, ERRORS
> or CANCELED. If the status is ERRORS, there may be one or more error
> stings identified.
>
> <img src="media/image2.png" style="width:3.69792in;height:3in"
> alt="tpo" />

Figure 16 – Bid/Offer/Trade/Schedule Common Elements

> The mRID is not supplied for the initial submission of a bid, but must
> be supplied for cancellations to previously submitted bids. The
> marketType is currently optional and is reserved for future use. When
> an mRID is specified for a ‘get’ or ‘cancel’ request, it is supplied
> using a message request/ID tag.
>
> The ‘externalId’ may be populated by the QSE with an identifier of
> their choice. If supplied upon submission, the identifier will then be
> used in conjunction with notifications of acceptance or rejection due
> to errors.
