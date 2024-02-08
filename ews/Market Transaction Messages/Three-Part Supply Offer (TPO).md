# Three-Part Supply Offer (TPO)

> The following diagram defines the structure of a Three-Part Supply
> Offer that could be included within a BidSet, using the ThreePartOffer
> tag. This is one of the more complex structures as it involves startup
> costs, minimum generation costs, and price curves. The PriceCurve is
> defined by CIM directly as a subclass of CurveSchedule.

<img src="media/image1.png" style="width:3.90625in;height:7.30208in"
alt="TPO1" />

Figure 17 – ThreePartOffer Structure

> The error tag is used to return one or more errors that may be the
> consequence of the failure of business or syntax validation rules for
> each type of bid/offer/trade/schedule. The EnergyOfferCurve element is
> based upon a PriceCurve type. Within PriceCurve, the values of
> ‘xvalue’ are used to identify the quantity in MW, and the values of
> ‘y1value’ are used to define the price in \$/MWh. The number of points
> in each PriceCurve is limited to 10. Where more than one PriceCurve is
> supplied for a bid/offer/trade, the start and end times must not
> overlap. The incExcFlag is to indicate whether the capacity of the
> ThreePartOffer is inclusive of the capacity bid in the AS market. The
> reason code is typically used for adjustments. The structure of a
> PriceCurve type is detailed in the following diagram:
>
> <img src="media/image2.png" style="width:5.29167in;height:5.40625in"
> alt="2aa" />

Figure 18 - PriceCurve Structure

> The following diagrams describe the structures used for FIP/FOP,
> startup costs and minimum generation costs within the ThreePartOffer
> message. Note that if more than one StartupCost or MinimumEnergy is
> provided, there must not be overlapping start and end times. That is
> to say that more than one StartupCost or more than one MinimumEnergy
> can be specified within the day, provided that the time intervals for
> each instance are distinct.
>
> <img src="media/image3.png" style="width:3.89583in;height:8.98958in"
> alt="TPO2" />

Figure 19 - EocFipFop, SuMeFipFop, StartupCost, and MinimumEnergy
Structures

> On submission, the following table describes the items used for a
> ThreePartOffer. Please note that fields that are used as ‘keys’ to
> identify a bid/offer/trade/schedule (see section 2.3.3) are identified
> by ‘K’. Required fields are identified by ‘Y’, option fields are
> identified by ‘N’. There are some exception cases where identified key
> fields are identified as not being required (e.g. expirationTime), and
> are notated as ‘K, N’.

| *Element*                                                                            | *Req?* | *Datatype* | *Description*                                                  | *Values*                                                            |
|--------------------------------------------------------------------------------------|--------|------------|----------------------------------------------------------------|---------------------------------------------------------------------|
| startTime                                                                            | N      | dateTime   | Start time for bid                                             | Valid start hour boundary for trade date                            |
| endTime                                                                              | N      | dateTime   | End time for bid                                               | Valid end hour boundary for trade date                              |
| externalId                                                                           | N      | string     | External ID                                                    | QSE supplied                                                        |
| resource                                                                             | K      | string     | Resource                                                       | Valid resource name                                                 |
| combinedCycle                                                                        | N      | string     | Combined cycle to which resource is associated                 | NULL or Valid plant name if unit is part of a combined cycle        |
| expirationTime                                                                       | Y      | dateTime   | Time of offer expiration                                       | Valid time within trade date adjustment period                      |
| EocFipFop/startTime                                                                  | Y      | dateTime   | Start time for Energy Offer Curve                              | Valid hour boundary within the trade date                           |
| EocFipFop/endTime                                                                    | Y      | dateTime   | End time for Energy Offer Curve                                | Valid hour boundary within the trade date                           |
| EocFipFop/fipPercent                                                                 | Y      | decimal    | Fuel index price percent for Energy Offer Curve                | \>= 0, \<= 100                                                      |
| EocFipFop/fopPercent                                                                 | Y      | decimal    | Fuel oil price percent for Energy Offer Curve                  | \>= 0, \<= 100                                                      |
| SuMeFipFop/startTime                                                                 | N      | dateTime   | Start time for Startup Minimum Energy                          | Valid hour boundary within the trade date                           |
| SuMeFipFop/endTime                                                                   | N      | dateTime   | End time for Startup Minimum Energy                            | Valid hour boundary within the trade date                           |
| SuMeFipFop/fipPercent                                                                | N      | decimal    | Fuel index price percent for Startup Minimum Energy            | \>= 0, \<= 100                                                      |
| SuMeFipFop/fopPercent                                                                | N      | decimal    | Fuel oil price percent for Startup Minimum Energy              | \>= 0, \<= 100                                                      |
| Note: SuMeFipFop element is required when StartUpCost and MinimumEnergy are present. |        |            |                                                                |                                                                     |
| StartupCost/startTime                                                                | N      | dateTime   | Start time for startup costs                                   | Valid hour boundary within the trade date                           |
| StartupCost/endTime                                                                  | N      | dateTime   | End time for startup costs                                     | Valid hour boundary within the trade date                           |
| StartupCost/hot                                                                      | N      | decimal    | Hot startup cost                                               | \>= 0                                                               |
| StartupCost/intermediate                                                             | N      | decimal    | Intermediate startup cost                                      | \>= 0                                                               |
| StartupCost/cold                                                                     | N      | decimal    | Cold startup cost                                              | \>= 0                                                               |
| MinimumEnergy/startTime                                                              | N      | dateTime   | Start time for minimum energy costs                            | Valid hour boundary within the trade date                           |
| MinimumEnergy/endTime                                                                | N      | dateTime   | End time for energy costs                                      | Valid hour boundary within the trade date                           |
| MinimumEnergy/cost                                                                   | N      | decimal    | Minimum energy cost                                            | \>= 0                                                               |
| EnergyOfferCurve/startTime                                                           | Y      | dateTime   | Start time for curve                                           | Valid hour boundary within the trade date                           |
| EnergyOfferCurve/endTime                                                             | Y      | dateTime   | End time for curve                                             | Valid hour boundary within the trade date                           |
| EnergyOfferCurve/curveStyle                                                          | N      | string     | Not used                                                       |                                                                     |
| EnergyOfferCurve/CurveData/xvalue                                                    | Y      | float      | Megawatts                                                      | Quantity in MW                                                      |
| EnergyOfferCurve/CurveData/y1value                                                   | Y      | float      | \$/MWh                                                         | Price in \$/MWh                                                     |
| EnergyOfferCurve/incExcFlag                                                          | Y      | string     | Identifies whether or not an AS offer is linked to this offer. | INC or EXC. Default should be INC, where it is linked to an ASOffer |
| EnergyOfferCurve/reason                                                              | Y      | string     | Reason for adjustment                                          | OUT or FUEL or DSCM                                                 |

Figure 20 - ThreePartOffer Requirements

> There should minimally be a StartupCost, MinimumEnergy or PriceCurve
> specified for a Three Part Offer.
>
> The following is an XML example of a Three Part Offer:
>
> \<BidSet xmlns="http://www.ercot.com/schema/2007-06/nodal/ews"
> xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
> xsi:schemaLocation="http://www.ercot.com/schema/2007-06/nodal/ews
> ErcotTransactions.xsd"\>
>
> \<tradingDate\>2008-01-01\</tradingDate\>
>
> \<ThreePartOffer\>
>
> \<startTime\>2008-01-01T00:00:00-05:00\</startTime\>
>
> \<endTime\>2008-01-02T00:00:00-05:00\</endTime\>
>
> \<marketType\>DAM\</marketType\>
>
> \<expirationTime\>2008-01-02T00:00:00-05:00\</expirationTime\>
>
> \<resource\>Resource1\</resource\>
>
> \<EocFipFop\>
>
> \<startTime\>2008-01-01T00:00:00-05:00\</startTime\>
>
> \<endTime\>2008-01-02T00:00:00-05:00\</endTime\>
>
> \<fipPercent\>20\</fipPercent\>
>
> \<fopPercent\>80\</fopPercent\>
>
> \</EocFipFop\>
>
> \<SuMeFipFop\>
>
> \<startTime\>2008-01-01T00:00:00-05:00\</startTime\>
>
> \<endTime\>2008-01-02T00:00:00-05:00\</endTime\>
>
> \<fipPercent\>20\</fipPercent\>
>
> \<fopPercent\>80\</fopPercent\>
>
> \</SuMeFipFop\>
>
> \<StartupCost\>
>
> \<startTime\>2008-01-01T00:00:00-05:00\</startTime\>
>
> \<endTime\>2008-01-02T00:00:00-05:00\</endTime\>
>
> \<hot\>7\</hot\>
>
> \<intermediate\>5\</intermediate\>
>
> \<cold\>3\</cold\>
>
> \</StartupCost\>
>
> \<MinimumEnergy\>
>
> \<startTime\>2008-01-01T00:00:00-05:00\</startTime\>
>
> \<endTime\>2008-01-02T00:00:00-05:00\</endTime\>
>
> \<cost\>5\</cost\>
>
> \</MinimumEnergy\>
>
> \<EnergyOfferCurve\>
>
> \<startTime\>2008-01-01T00:00:00-05:00\</startTime\>
>
> \<endTime\>2008-01-02T00:00:00-05:00\</endTime\>
>
> \<CurveData\>
>
> \<xvalue\>3.1\</xvalue\>
>
> \<y1value\>3.1\</y1value\>
>
> \</CurveData\>
>
> \<incExcFlag\>INC\</incExcFlag\>
>
> \<reason\>OUT\</reason\>
>
> \</EnergyOfferCurve\>
>
> \</ThreePartOffer\>
>
> \</BidSet\>
>
> And the corresponding response:
>
> \<ns1:BidSet
> xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews"\>
>
> \<ns1:tradingDate\>2008-06-15\</ns1:tradingDate\>
>
> \<ns1:ThreePartOffer\>
>
> \<ns1:mRID\>QSE1.20080615.TPO.Resource1\</ns1:mRID\>
>
> \<ns1:externalId/\>
>
> \<ns1:status\>ACCEPTED\</ns1:status\>
>
> \<ns1:error\>
>
> \<ns1:severity\>INFORMATIVE\</ns1:severity\>
>
> \<ns1:text\>Successfully Cancelled the Output Schedule\</ns1:text\>
>
> \</ns1:error\>
>
> \<ns1:error\>
>
> \<ns1:severity\>INFORMATIVE\</ns1:severity\>
>
> \<ns1:text\>Successfully processed the ERCOT Three Part
> Offer.\</ns1:text\>
>
> \</ns1:error\>
>
> \</ns1:ThreePartOffer\>
>
> \</ns1:BidSet\>
