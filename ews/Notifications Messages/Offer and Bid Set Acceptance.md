### Offer and Bid Set Acceptance 

The purpose of this notification is to indicate the acceptance of a
BidSet to a QSE. This is necessary as BidSets are validated some time
after the initial submission.

A more detailed description of this process is described in the Market 
Transaction Service section.  The following is an example payload where 
all bids have been set to a PENDING state.

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-05/nodal/ews" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <tradingDate>2008-01-01</tradingDate>
    <ASOffer>
        <mRID>ACME.20080101.ASO.<Resource1>.Reg-Up</mRID>
        <externalId>XID12345</externalId>
        <status>PENDING</status>
    </ASOffer>
    <ASOffer>
        <mRID>ACME.20080101.ASO.<Resource2>.Reg-Up</mRID>
        <externalId>XID12346</externalId>
        <status>PENDING</status>
    </ASOffer>
</BidSet>
~~~
