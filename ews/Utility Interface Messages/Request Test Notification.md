# Request Test Notification

> The purpose of this interface is to provide the means to request that
> a test notification be sent back to the MP. The payload provided on
> the request will then be used as the notification payload. The
> following table describes the request parameters:

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | create                          |
| Header/Noun                               | TestNotification                |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |
| Payload/any                               | *Any message payload*           |

Figure 184 - TestNotification Request

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>       |
|-------------------------------------------|---------------------------------------|
| Header/Verb                               | reply                                 |
| Header/Noun                               | TestNotification                      |
| Header/Source                             | ERCOT                                 |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR* |
| Reply/Error                               | *Error message, if error encountered* |
| Reply/Timestamp                           | *Identifies current ERCOT local time* |

Figure 185 - TestNotification Response
