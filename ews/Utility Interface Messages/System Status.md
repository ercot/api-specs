# System Status

> The purpose of this interface is to provide the means to verify that a
> connection can be established with the ERCOT web services through a
> simple status check. The request message would use the following
> message fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | get                             |
| Header/Noun                               | SystemStatus                    |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |

Figure 182 - SystemStatus Request

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>          |
|-------------------------------------------|------------------------------------------|
| Header/Verb                               | reply                                    |
| Header/Noun                               | SystemStatus                             |
| Header/Source                             | ERCOT                                    |
| Header/Revision                           | Identifies current version of interfaces |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR*    |
| Reply/Error                               | *Error message, if error encountered*    |
| Reply/Timestamp                           | *Identifies current ERCOT local time*    |

Figure 183 - SystemStatus Response
