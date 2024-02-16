### Startup/Shutdown Instructions

The purpose of this notification is to notify market participants of
startup and shutdown instructions.

The following response message structure will be used for
StartupShutdown Instructions notification:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | created                                        |
| Header/Noun                               | StartupShutdownInstructions                    |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Reply/Timestamp                           | *Current System Timestamp*                     |
| Payload/                                  | StartupShutdownInstructions                    |

The following payload structure is used to convey these notifications.

![StartupShutdownInstructions Structure](../Images/StartupShutdownInstructions_Structure.png)

![StartupShutdown Structure](../Images/StartupShutdown_Structure.png)

The following is an XML example:

~~~
<StartupShutdownInstructions xmlns="http://www.ercot.com/schema/2007-06/nodal/ews" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <StartupShutdown>
        <rucType>DRUC</rucType>
        <hourEnding>6</hourEnding>
        <deliveryDate>2007-07-25</deliveryDate>
        <resource>Resource1</resource>
        <clearedCommit>true</clearedCommit>
        <clearedDecommit>false</clearedDecommit>
        <decommitReasonCode>50 characters of free form text.</decommitReasonCode>
        <reportDate>2007-07-25T11:00:00-06:00</reportDate>
    </StartupShutdown>	
</StartupShutdownInstructions>
~~~

> [!NOTE]
> On long day(DST change day), hourEnding will be represented as
> 2\* for repeating hour.
