### Outage Cancellation

The request message for outage cancellation would use the following
message fields:

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
<td>Cancel</td>
</tr>
<tr class="even">
<td>Header/Noun</td>
<td>OutageSet</td>
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
<td>Request/ID</td>
<td><p><em>mRID* of the Outage to be canceled</em></p>
<p><em>Only one outage can be cancelled at a time</em></p></td>
</tr>
<tr class="even">
<td>Payload</td>
<td><em>OutageCancel (Notes) [Optional]</em></td>
</tr>
</tbody>
</table>

To cancel an Outage:

`*<QSEID>.OTG.<outageType>.<outageCategory>.<outageIdent>.<cancelReasonCode>*`

To cancel Outages by the group:

`*<QSEID>.OTG.<outageType>.<outageCategory>.<outageIdent>.<groupId>.<cancelReasonCode>*`

To cancel a single Outage in a group:

`*<QSEID>.OTG.<outageType>.<outageCategory>.<outageIdent>.<groupId>.<cancelReasonCode>.TRUE*`

- The Outage Scheduler cancellation reason code should be appended to
  the Outage Scheduler mRID as shown in the examples above.

- The `<groupId>` shown in the mRID of the second and third examples
  above corresponds to the third token of the groupId element returned
  in the Outage Creation XML response. For example, if the groupId
  returned in response to an Outage Creation request was
  `*<ns1:groupId>ShortName.OTG.1930</ns1:groupId>*`, the value placed
  in the Outage Cancel request for `*<groupId>*` should be `*1930*`. Refer
  to the table in Section 7.2.1 for additional information.

- When canceling a single outage within a group, the TRUE at the end of
  the mRID in the third example instructs Outage Scheduler to ungroup
  the outage.

| mRID CancelRequestCode Token | Outage Scheduler Cancel Request Reason Description |
|------------------------------|----------------------------------------------------|
| ERR                          | Cancel – ERROR                                     |
| EXP                          | Cancel – Expired                                   |
| RES1M                        | Cancel – Reschedule within 1 month                 |
| CWE                          | Cancel – Coordinating with ERCOT                   |
| EOP                          | Cancel – Emergency Operations                      |
| LCU                          | Cancel – Labor/Crew Unavailable                    |
| MUA                          | Cancel – Materials Unavailable                     |
| RDU                          | Cancel – Reschedule date unknown                   |
| RNS                          | Cancel – Reschedule within next season             |
| WCD                          | Cancel – Weather Conditions                        |
| WNR                          | Cancel – Will not reschedule                       |

Outage cancel notes can be supplied using following XML elements (as
specified in table) for an individual outage or a group outage. The
notes specified in the table are optional and thus not required on a
cancel outage request.  However, if these notes are included, they must
be sent using the payload element in the request as defined by
OutageCancel element in ErcotOutages.xsd.

| *Element*                                             | *Req?* | *Data type* | *Description*                                                                                                                                                 | *Values*                                                                                                      |
|-------------------------------------------------------|--------|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| OutageCancel/userFullName                             | Y      | string      |                                                                                                                                                               | UserFullName is required on a Submit, Update and Cancel. Note: the element is defined as optional in the XSD. |
| OutageCancel/OSNotes/RequestorNotes/Note/createdTime  | N      | string      | There are three sections that the requestor can enter notes, Requestor Notes, Supporting Information, and Remedial Action or Special Protection System notes. |                                                                                                               |
| OutageCancel/OSNotes/RequestorNotes/Note/createdBy    | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/RequestorNotes/Note/company      | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/RequestorNotes/Note/comment      | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/SupportingNotes/Note/createdTime | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/SupportingNotes/Note/createdBy   | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/SupportingNotes/Note/company     | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/SupportingNotes/Note/comment     | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/RASPSNotes/Note/createdTime      | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/RASPSNotes/Note/createdBy        | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/RASPSNotes/Note/company          | N      | string      |                                                                                                                                                               |                                                                                                               |
| OutageCancel/OSNotes/RASPSNotes/Note/comment          | N      | string      |                                                                                                                                                               |                                                                                                               |

The following is an example for a Cancel OutageSet request. This
example includes the entire RequestMessage structure.

~~~
<RequestMessage xmlns="http://www.ercot.com/schema/2007-06/nodal/ews/message">
    <Header>
        <Verb>cancel</Verb>
        <Noun>OutageSet</Noun>
        <ReplayDetection>
            <Nonce>-123456789</Nonce>
            <Created>2016-09-09T14:00:10.425-05:00</Created>
        </ReplayDetection>
        <Revision>1</Revision>
        <Source>TABC</Source>
        <UserID>asmith</UserID>
        <MessageID>987654321</MessageID>
    </Header>
    <Request>
        <ID>TABC.OTG.PL.Transmission.ABC00118441.WCD</ID>
    </Request>
    <Payload>
        <ns2:OutageCancel xmlns="http://www.ercot.com/schema/2007-06/nodal/ews" xmlns:ns2="http://www.ercot.com/schema/2007-06/nodal/ews">
            <userFullName>Alex Smith</userFullName>
            <ns2:OSNotes>
                <ns2:RequestorNotes>
                    <ns2:Note>
                        <ns2:createdTime>2016-09-09T14:00:10-05:00</ns2:createdTime>
                        <ns2:createdBy>asmith</ns2:createdBy>
                        <ns2:company>TABC</ns2:company>
                        <ns2:comment>example comment</ns2:comment>
                    </ns2:Note>
                </ns2:RequestorNotes>
            </ns2:OSNotes>
        </ns2:OutageCancel>
    </Payload>
</RequestMessage>
~~~

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | Reply                                          |
| Header/Noun                               | OutageSet                                      |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
