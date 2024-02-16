# Get mRID

> The purpose of this interface is to provide the means to obtain an
> mRID value that corresponds to a given set of key values for a market
> product. The generated mRID values are structured according to the
> rules in section 2.3.4. Hours are not included in the generated mRID
> strings.

The request message would use the following message fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                                                                                                                                                 |
|-------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Header/Verb                               | get                                                                                                                                                                             |
| Header/Noun                               | mRID                                                                                                                                                                            |
| Header/Source                             | *Market participant ID*                                                                                                                                                         |
| Header/UserID                             | *ID of user*                                                                                                                                                                    |
| Payload                                   | *A BidSet, OutageSet\*\*, ResParametersSet, or VDIs that provides the ‘key’ information required for a specific type of market product as needed to construct the desired mRID* |

Figure 180 - Get mRID Request

\*\*Please Note that Outage Ident, the 5<sup>th</sup> token of OutageSet
mRID, is assigned by Outage Scheduler and will not be returned by this
interface and will be reflected as following:

\<QSEID\>.OTG.\<outageType\>.\<outageCategory\>.\[outageIdent\]

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>       |
|-------------------------------------------|---------------------------------------|
| Header/Verb                               | reply                                 |
| Header/Noun                               | mRID                                  |
| Header/Source                             | ERCOT                                 |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR* |
| Reply/Error                               | *Error message, if error encountered* |
| Reply/ID                                  | *mRID string*                         |

Figure 181 - Get mRID Response
