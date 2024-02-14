### Offer and Bid Set Errors 

The purpose of this message is to indicate that one or more bids in a
BidSet had errors. Those bids in a BidSet without errors are otherwise
accepted. Error may also indicate the rejection of bids or offers for
reasons such as the failure to receive credit approval.

Examples of errors are described in section 3.4. The following is an
XML example where some bids were not valid and therefore rejected.

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-05/nodal/ews" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <tradingDate>2008-01-01</tradingDate>
    <ASOffer>
        <mRID>ACME.20080101.ASO.<Resource1>.Reg-Up</mRID>
        <externalId>XID12360</externalId>
        <status>PENDING</status>
    </ASOffer>
    <ASOffer>
        <mRID>ACME.20080101.ASO.<Resource2>.Reg-Up</mRID>
        <externalId>XID12361</externalId>
        <status>ERROR</status>
        <error><severity>ERROR</severity><text>Invalid AS Type</text></error>
    </ASOffer>
</BidSet>
~~~
