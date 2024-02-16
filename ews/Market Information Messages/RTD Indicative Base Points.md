### RTD Indicative Base Points

This section describes interfaces used to retrieve RTD Indicative Base
Points. This report is posted for a given QSE and will contain the
Base Points for every resource belonging only to that QSE for every
interval in a particular RTD Study Period. The request message would
use the following message fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | get                             |
| Header/Noun                               | RTDIndicativeBasePoints         |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |
| Request/StartTime                         | *Start time of interest*        |
| Request/EndTime                           | *End time of interest*          |

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | RTDIndicativeBasePoints                        |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload/                                  | RTDIndicativeBasePoints                        |

The structure of RTD Indicative Base Points are described by the
following diagram:

![RTDIndicativeBasePoints Structure](../Images/RTDIndicativeBasePoints_Structure.png)

![RTDIndicativeBasePoint Structure](../Images/RTDIndicativeBasePoint_Structure.png)

The following elements are used to report RTD Indicative Base Points:

- RTD Timestamp

- Repeated Hour Flag which indicates the extra hour on the DST long day

- Interval ID

- Interval Ending

- Interval Repeated Hour Flag

- Resource Name

- Participant Name

- Base Point

The following is an XML example:

~~~
<ns1:RTDIndicativeBasePoints xmlns:ns0="http://www.ercot.com/schema/2007-05/nodal/eip/il"
    xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:RTDIndicativeBasePoint>
        <ns1:RTDTimestamp>03/30/2012 15:04:01</ns1:RTDTimestamp>
        <ns1:RepeatedHourFlag>N</ns1:RepeatedHourFlag>
        <ns1:IntervalId>1</ns1:IntervalId>
        <ns1:IntervalEnding>03/30/2012 15:10:00</ns1:IntervalEnding>
        <ns1:IntervalRepeatedHourFlag>N</ns1:IntervalRepeatedHourFlag>
        <ns1:ResourceName>RES_ABC1</ns1:ResourceName>
        <ns1:ParticipantName>QABC</ns1:ParticipantName>
        <ns1:BasePoint>29.7</ns1:BasePoint>
    </ns1:RTDIndicativeBasePoint>
</ns1:RTDIndicativeBasePoints>
~~~

