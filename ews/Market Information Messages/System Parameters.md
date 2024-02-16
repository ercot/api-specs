### System Parameters

This section describes the interface used to retrieve the most recent
Energy management System (EMS) System Parameters. The result set will
hold the near real time values available from EMS.

These Real-Time summaries are also available to ERCOT operators and
all Market Participants using the MIS and ICCP, giving updates of
calculations every ten seconds, which show the Real-Time total system
amount of:

- Responsive Reserve Capacity from Generation Resources

- Responsive Reserve Capacity from Load Resources excluding Controllable
  Load Resources

- Responsive Reserve Capacity from Controllable Load Resources

- Unprocured Additional Capacity from Load Resources excluding
  Controllable Load Resources

- Responsive Reserve Capacity from Deployed Generation Resource and
  Controllable Load Resources

- Responsive Reserve Responsibility from Generation Resource

- Responsive Reserve Responsibility from Load Resources excluding
  Controllable Load Resources

- Responsive Reserve Responsibility from Controllable Load Resources

- Non-Spinning Reserve Capacity available from On-Line Generation
  Resources with Energy Offer Curves

- Non-Spinning Reserve Capacity available from undeployed Load Resources

- Non-Spinning Reserve Capacity available from Off-Line Generation
  Resources

- Non-Spinning Reserve Capacity available from Resources with Output
  Schedules

- Non-Spinning Reserve Responsibility from On-Line Generation Resources
  with Energy Offer Curves

- Non-Spinning Reserve Responsibility from On-Line Generation Resources
  with Output Schedules

- Non-Spinning Reserve Responsibility from Load Resources

- Non-Spinning Reserve Responsibility from Off-Line Generation Resources
  excluding Quick Start Generation Resources

- Non-Spinning Reserve Responsibility from Quick Start Generation
  Resources

- Undeployed Reg-Up and undeployed Reg-Down

- Deployed Reg-Up and deployed Reg-Down

- Regulation Responsibility Reg-Up and Reg-Down

- Available capacity from Controllable Load Resources available to
  decrease Base Points (energy consumption) in SCED

- Available capacity from Controllable Load Resources available to
  increase Base Points (energy consumption) in SCED

- Available capacity with Energy Offer Curves in the ERCOT System that
  can be used to increase Base Points in SCED

- Available capacity with Energy Offer Curves in the ERCOT System that
  can be used to decrease Base Points in SCED

- Available capacity without Energy Offer Curves in the ERCOT System
  that can be used to increase Base Points in SCED

- Available capacity without Energy Offer Curves in the ERCOT System
  that can be used to decrease Base Points in SCED

- Available capacity to increase Generation Resource Base Points in the
  next 5 minutes in SCED (HDL)

- Available capacity to decrease Generation Resource Base Points in the
  next 5 minutes in SCED (LDL)

- The ERCOT-wide Physical Responsive Capability (PRC)

- Real-Time On-Line Reserve Capacity

- Real-Time On-Line and Off-Line Reserve Capacity

- Total FFR computed by summing FFR MW from ONFFRRRS resource

- Total FFR Capacity computed by taking resource limits into account

- Contingency Reserve Capacity from Generation Resources

- Contingency Reserve Capacity from Load Resources excluding
  Controllable Load Resources

- Contingency Reserve Capacity from Controllable Load Resources

- Contingency Reserve Capacity from Quick Start Generation Resources

- Contingent Reserve Responsibility from Generation Resources

- Contingent Reserve Responsibility from Load Resources excluding
  Controllable Load Resources

- Contingent Reserve Responsibility from Controllable Load Resources

- Contingent Reserve Responsibility from Quick Start Generation
  Resources

- Contingency Reserve Capacity from Deployed Generation Resources and
  Load Resources

The request message would use the following message fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span> |
|-------------------------------------------|---------------------------------|
| Header/Verb                               | get                             |
| Header/Noun                               | SystemParameters                |
| Header/Source                             | *Market participant ID*         |
| Header/UserID                             | *ID of user*                    |

The corresponding response messages would use the following message
fields:

| <span class="mark">Message Element</span> | <span class="mark">Value</span>                |
|-------------------------------------------|------------------------------------------------|
| Header/Verb                               | reply                                          |
| Header/Noun                               | SystemParameters                               |
| Header/Source                             | ERCOT                                          |
| Reply/ReplyCode                           | *Reply code, success=OK, error=ERROR or FATAL* |
| Reply/Error                               | *Error message, if error encountered*          |
| Payload                                   | SystemParameters                               |

The following is an XML example for System Parameters interface:

~~~
<ns1:SystemParameters xmlns:ns0="http://www.ercot.com/schema/2007-05/nodal/eip/il"
    xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:time>2023-04-19T11:59:45-05:00</ns1:time>
    <ns1:rrcGenRes>1160.73681640625</ns1:rrcGenRes>
    <ns1:rrcLoadResWoClr>1462.20471191406</ns1:rrcLoadResWoClr>
    <ns1:rrcClr>76.4300003051758</ns1:rrcClr>
    <ns1:nsrOnlineGenResWoEo>196.0</ns1:nsrOnlineGenResWoEo>
    <ns1:nsrUndeployedLoadRes>54.6940040588379</ns1:nsrUndeployedLoadRes>
    <ns1:nsrOfflineGenRes>3197.169921875</ns1:nsrOfflineGenRes>
    <ns1:nsrOfflineResWOS>559.830078125</ns1:nsrOfflineResWOS>
    <ns1:undeployedRegUp>150.734359741211</ns1:undeployedRegUp>
    <ns1:undeployedRegDown>389.0</ns1:undeployedRegDown>
    <ns1:capWEOIncreaseBP>2569.84887695313</ns1:capWEOIncreaseBP>
    <ns1:capWEODecreaseBP>3765.91967773438</ns1:capWEODecreaseBP>
    <ns1:capWOEOIncreaseBP>5760.798828125</ns1:capWOEOIncreaseBP>
    <ns1:capWOEODecreaseBP>26643.263671875</ns1:capWOEODecreaseBP>
    <ns1:prc>5997.5986328125</ns1:prc>
    <ns1:capCLRIncreaseBP>0.0</ns1:capCLRIncreaseBP>
    <ns1:capCLRDecreaseBP>3.76999664306641</ns1:capCLRDecreaseBP>
    <ns1:rrcUnprocuredL>308.591522216797</ns1:rrcUnprocuredL>
    <ns1:rrcDeployedGnCl>0.0</ns1:rrcDeployedGnCl>
    <ns1:rrRespGn>1160.90014648438</ns1:rrRespGn>
    <ns1:rrRespNcl>1478.5205078125</ns1:rrRespNcl>
    <ns1:rrRespCl>80.0</ns1:rrRespCl>
    <ns1:nsRespGnWEo>551.400024414063</ns1:nsRespGnWEo>
    <ns1:nsRespGnWOS>800.030029296875</ns1:nsRespGnWOS>
    <ns1:nsRespLd>98.0</ns1:nsRespLd>
    <ns1:nsRespGnOff>3197.17016601562</ns1:nsRespGnOff>
    <ns1:nsRespQsgr>515.830078125</ns1:nsRespQsgr>
    <ns1:deployedRegUp>206.765655517578</ns1:deployedRegUp>
    <ns1:deployedRegDown>0.0</ns1:deployedRegDown>
    <ns1:regUpResp>357.5</ns1:regUpResp>
    <ns1:regDnResp>389.0</ns1:regDnResp>
    <ns1:capGnIncreaseBp>4785.0078125</ns1:capGnIncreaseBp>
    <ns1:capGnDecreaseBp>24512.748046875</ns1:capGnDecreaseBp>
    <ns1:rtRvCapOn>18130.98046875</ns1:rtRvCapOn>
    <ns1:rtRvCapOnOff>23070.98046875</ns1:rtRvCapOnOff>
    <ns1:hslTEmr>78.0</ns1:hslTEmr>
    <ns1:hslTOut>17298.251953125</ns1:hslTOut>
    <ns1:hslTOutl>509.375915527344</ns1:hslTOutl>
    <ns1:ffrrt>0.0</ns1:ffrrt>
    <ns1:ffrrrscp>0.0</ns1:ffrrrscp>
    <ns1:ecrsCapacityGn>0.0</ns1:ecrsCapacityGn>
    <ns1:ecrsCapacityNcl>-0.000000000000748179195424347</ns1:ecrsCapacityNcl>
    <ns1:ecrsCapacityCl>0.0</ns1:ecrsCapacityCl>
    <ns1:ecrsCapacityQs>0.0</ns1:ecrsCapacityQs>
    <ns1:ecrsRespGn>0.0</ns1:ecrsRespGn>
    <ns1:ecrsRespNcl>0.0</ns1:ecrsRespNcl>
    <ns1:ecrsRespCl>0.0</ns1:ecrsRespCl>
    <ns1:ecrsRespQs>0.0</ns1:ecrsRespQs>
    <ns1:ecrsDeployed>0.0</ns1:ecrsDeployed>
</ns1:SystemParameters>
~~~

