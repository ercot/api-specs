## Notices and Alerts 

The specific payload for an Alert or Notice is described in the
following diagram. Event container is used to hold Alerts and Notices.
While there may be many different types of Notifications, the primary
difference between a Notice and an Alert is that there is an expectation
that an Alert would be acknowledged:

![Event Structure]()

Example:

~~~
<Event xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ercot.com/schema/2007-06/nodal/ews ErcotEvents.xsd" xmlns="http://www.ercot.com/schema/2007-06/nodal/ews">
    <qse>TXU</qse>
    <ID>CM-CAPTRD-NOTF</ID>
    <type>Reported Trade</type>
    <priority>High</priority>
    <source>MMS</source>
    <issued> 2008-10-17T12:53:41.115-05:00 </issued>
    <summary>Trade Submission update by TXU: Confirmed: YES, for Trade Date: 11/21/2008,  Buyer: TXU, Seller: Calpine</summary>
</Event>
~~~
