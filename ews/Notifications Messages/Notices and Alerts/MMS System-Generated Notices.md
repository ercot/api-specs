### MMS System-Generated Notices

The following notices are Market Management System (MMS)
system-generated and will display on the MMS market-facing user
interface on the notices page as well as on the MIS website’s Notices
page. Additionally these events are sent out asynchronously to the
Market Participants Listeners.

In addition to the protocol-required notices, the MMS system generates
some additional notices that are documented below.

The asynchronous outgoing notification alerts will have the following
verb/noun combination:

- verb=created

- noun=Alert

<table>
<colgroup>
<col style="width: 3%" />
<col style="width: 26%" />
<col style="width: 27%" />
<col style="width: 24%" />
<col style="width: 7%" />
<col style="width: 10%" />
</colgroup>
<thead>
<tr class="header">
<th>#</th>
<th><blockquote>
<p>Alert Text</p>
</blockquote></th>
<th><blockquote>
<p>Description</p>
</blockquote></th>
<th>Type + Report</th>
<th>Priority</th>
<th>Audience</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><u>CM-ASCK-FAIL</u> AS Responsibility Check failed for Trade Date:
&lt;MM/DD/YYYY&gt;, Delivery Hour: &lt;HH&gt; for AS Type:
&lt;AS_TYPE&gt;. The Total COP is &lt;XX&gt; MW and the AS Difference =
&lt;XX&gt; MW</td>
<td><blockquote>
<p>ERCOT shall notify the QSE if the sum of the Ancillary Service
capacity designated in the COP for each hour, by service type) is less
than the QSE's Ancillary Service Supply Responsibility for each service
type for that hour. If the QSE does not correct the deficiency within
one hour after receiving the notice from ERCOT, then ERCOT shall follow
the procedures outlined in Section 6.4.8.1, Evaluation, and Maintenance
of Ancillary Service Capacity Sufficiency.</p>
</blockquote></td>
<td>COP Warning</td>
<td>High</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>2</td>
<td><p><u>DRUC-AWD-RPT</u> Reports on DRUC Awards for operating date
&lt;MM/DD/YYYY&gt; are available.</p>
<p><u>HRUC-AWD-RPT</u> Reports on HRUC Awards for operating date
&lt;MM/DD/YYYY&gt; hr &lt;XX&gt; are available.</p></td>
<td><blockquote>
<p>ERCOT shall review the RUC-recommended Resource commitments to assess
feasibility and shall make any changes that it considers necessary, in
its sole discretion. ERCOT shall notify each QSE which of its Resources
have been committed as a result of the RUC process.</p>
</blockquote></td>
<td><p>RUC Commitment</p>
<p>Noun: StartupShutdownInstructions</p>
<p>Synch : 4.3.27</p>
<p>Async: 5.3.13</p></td>
<td>Low</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>3</td>
<td><u>DAM-ASOBL-RPT</u> Reports on AS obligation for operating day
&lt;MM/DD/YYYY&gt; are available</td>
<td>By 0600 of the Day-Ahead, ERCOT shall notify each QSE of its
Ancillary Service Obligation for each service and for each hour of the
Operating Day</td>
<td><p>QSE Data Available</p>
<p>Noun: ASObligations</p>
<p>Synch: 4.3.15</p>
<p>Async: 5.3.11</p></td>
<td>Low</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>4</td>
<td><u>CM-CAPTRD-NOTF</u> Capacity Trade &lt;Submission/Cancel&gt;
update by &lt;PARTICIPANT_NAME&gt;: Confirmed: &lt;NO/YES&gt;, for Trade
Date: &lt;MM/DD/YYYY&gt;, Buyer:&lt;PARTICIPANT_NAME,
Seller:&lt;PARTICIPANT_NAME&gt;</td>
<td>When a Capacity Trade is reported to ERCOT, ERCOT shall notify the
counterparty to the trade.</td>
<td><p>Reported Trade</p>
<p>None: Confirmed and Unconfirmed Trades</p>
<p>Synch: 4.3.46,47</p>
<p>Async: 5.3.4</p></td>
<td>High</td>
<td>counterparty to the trade.</td>
</tr>
<tr class="odd">
<td>5</td>
<td><u>CM-ENGTRD-NOTF</u> Energy Trade &lt;Submission/Cancel&gt; update
by &lt;PARTICIPANT_NAME&gt;: Confirmed: &lt;NO/YES&gt;, for Trade Date:
&lt;MM/DD/YYYY&gt;, Buyer:&lt;PARTICIPANT_NAME,
Seller:&lt;PARTICIPANT_NAME&gt;, Settlement Point:
&lt;SETTLEMENT_POINT&gt;</td>
<td>When an Energy Trade is reported to ERCOT, ERCOT shall notify the
counterparty to the trade.</td>
<td><p>Reported Trade</p>
<p>Noun: Confirmed and Unconfirmed Trades</p>
<p>Synch: 4.3.46,47</p>
<p>Async: 5.3.4</p></td>
<td>High</td>
<td>counterparty to the trade.</td>
</tr>
<tr class="even">
<td>6</td>
<td><u>CM-ASTRD-NOTF</u> AS &lt;AS_TYPE&gt; Trade
&lt;Submission/Cancel&gt; update by &lt;PARTICIPANT_NAME&gt;: Confirmed:
&lt;NO/YES&gt;, for Trade Date: &lt;MM/DD/YYYY&gt;,
Buyer:&lt;PARTICIPANT_NAME&gt;,Seller:&lt;PARTICPANT_NAME&gt;</td>
<td>When an Ancillary Service Trade is reported to ERCOT, ERCOT shall
notify the counterparty to the trade.</td>
<td><p>Reported Trade</p>
<p>Noun: Confirmed and Unconfirmed Trades</p>
<p>Synch 4.3.46,47</p>
<p>Async: 5.3.4</p></td>
<td>High</td>
<td>counterparty to the trade.</td>
</tr>
<tr class="odd">
<td>7</td>
<td><u>SCED-ADJPER-FAIL</u> End of Adjustment Period: Output Schedule
Validation FAILED for Hour:&lt;HH&gt; and Date: &lt;MM/DD/YYYY&gt;,.
Please find the details in the report &lt;REPORT_NAME&gt;.</td>
<td>If a valid Energy Offer Curve or an Output Schedule does not exist
for a Resource that has a status of On-Line at the end of the Adjustment
Period, then ERCOT shall notify the QSE and set the Output Schedule
equal to the then current telemetered output of the Resource until an
Output Schedule or Energy Offer Curve is submitted in a subsequent
Adjustment Period.</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>DAM AWARDS:</p>
<p><u>DAM-ASAWD-RPT</u> Reports on AS Awards for operating date
&lt;MM/DD/YYYY&gt; are available.</p>
<p><u>DAM-TPAWD-RPT</u> Reports on 3Part Awards for operating date
&lt;MM/DD/YYYY&gt; are available.</p>
<p><u>DAM-ENGYAWD-RPT</u> Reports on Energy Awards for operating date
&lt;MM/DD/YYYY&gt; are available.</p>
<p><u>DAM-CRRAWD-RPT</u> Reports on CRR Awards for operating date
&lt;MM/DD/YYYY&gt; are available.</p>
<p><u>DAM-PTPAWD-RPT</u> Reports on PTP Obligation Awards for operating
date &lt;MM/DD/YYYY&gt; are available.</p></td>
<td><p>Cleared DAM transaction (e.g., the buyer and the seller) of the
results of the DAM:</p>
<blockquote>
<p>(a) Awarded Ancillary Service Offers, specifying Resource, MW,
Ancillary Service Type, and price, for each hour of the awarded
offer;</p>
<p>(b) Awarded <u>energy offers from Three-Part Supply Offers and
from</u> DAM Energy-Only Offers, specifying <u>Resource (except for DAM
Energy-Only Offers),</u> MWh, Settlement Point, and Settlement Point
Price, for each hour of the awarded offer;</p>
<p>(c) Awarded DAM Energy Bids, specifying MWh, Settlement Point, and
Settlement Point Price for each hour of the awarded bid;</p>
<p>(d) Awarded CRR Offers (PTP Options and PTP Options with Refund),
specifying CRR identifier(s), number of CRRs in MW, source and sink
Settlement Points, and price, for each Settlement Interval of the
awarded offer; and</p>
<p>(e) Awarded PTP Obligation Bids, number of PTP Obligations in MW,
source and sink Settlement Points, and price for each Settlement
Interval of the awarded bid.</p>
</blockquote></td>
<td><p>QSE Data Available</p>
<p>Nouns:</p>
<p>AwardSet</p>
<p>AwardedAS</p>
<p>AwardedCRR</p>
<p>AwardedEnergyBid</p>
<p>AwardedEnergyOffer</p>
<p>AwardedEnergyOnlyOffer</p>
<p>AwardedPTPObligation</p>
<p>Synch: 4.3.1- 4.3.7</p>
<p>Async: 5.3.5 - 5.3.11</p></td>
<td>Low</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>9</td>
<td><p><u>SCED-TWOHR-FAIL</u> Two Hour Notification: Check FAILED due to
missing Output Schedules/Energy Offer Curves for Resource:
&lt;RESOURCE_NAME&gt;, Hour: &lt;HH&gt; and Date: &lt;MM/DD/YYYY&gt;</p>
<p><u>SCED-TWOHR-FAIL</u> Two Hour Notification: Output Schedule
Validation FAILED for Hour: &lt;HH&gt; and Date: &lt;MM/DD/YYYY&gt;.
Please find the details in the report
MP_S_OUTSCHED_TwoHrNotif_&lt;HH&gt;.</p></td>
<td>Notify the QSE that an Energy Offer Curve or Output Schedule has not
yet been submitted for a Resource as a reminder that one of the two must
be submitted by the end of the Adjustment Period</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>10</td>
<td><u>SCED-TELOS-NOTF</u> Telemetered Output Schedule Notification:
Output Schedule for Resource: &lt;RESOURCE_NAME&gt;</td>
<td>If a valid Output Schedule does not exist for a Resource that has a
status of On-Line Dynamically Scheduled Resource at the time of SCED
execution, then ERCOT shall notify the QSE and set the Output Schedule
equal to the telemetered output of the Resource until a revised Output
Schedule is validated.</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>11</td>
<td><u>CM-CONSCK-FAIL</u> Consistency Check for Resource Status failed
for Resource: &lt;RESOURCE_NAME&gt;, Operating Date: &lt;MM/DD/YYYY&gt;
, Operating Hour: &lt;HH&gt;, Cop Status: &lt;COP_STATUS&gt;,
Telemetered Status: &lt;TEL_STATUS&gt;</td>
<td>Five minutes before the end of each hour, ERCOT shall identify
inconsistencies between the telemetered Resource Status and the Resource
Status stated in the COP for that Resource in the next hour. On
detecting an inconsistency, ERCOT shall provide a notice of inconsistent
Resource Status to the QSE using the Messaging System</td>
<td>COP Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>12</td>
<td><u>SASM-STDYPER-NOTF</u> SASM study period for SASM ID
&lt;<em>YYYYMMDDHHMMSS</em>&gt; set from &lt;MM/DD&gt; hour &lt;HH&gt;
to &lt;MM/DD&gt; hour &lt;HH&gt;.</td>
<td></td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>13</td>
<td><u>SASM-ASOBL-RPT</u> Reports on SASM Obligation for SASM ID
&lt;<em>YYYYMMDDHHMMSS</em>&gt; from operating date &lt;MM/DD&gt; hour
&lt;HH&gt; through operating date &lt;MM/DD&gt; hour &lt;HH&gt; are
available.</td>
<td>Notify QSEs of any additional Ancillary Service Obligation,
allocated to each LSE and aggregated to the QSE level.</td>
<td><p>Market Message</p>
<p>Noun: ASObligations</p>
<p>Synch: 4.3.15</p>
<p>Async: 5.3.11</p></td>
<td>Low</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>14</td>
<td><u>SASM-OPEN-NOTF</u> SASM has opened for SASM ID
&lt;<em>YYYYMMDDHHMMSS</em>&gt; for Self AS submission. SASM will close
at &lt;HH:MM&gt;.</td>
<td>Notify all QSEs of intent to procure additional Ancillary
Services.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>15</td>
<td><u>SASM-ASAWD-RPT</u> Reports on SASM Awards for SASM ID
&lt;<em>YYYYMMDDHHMMSS</em>&gt; from operating date &lt;MM/DD&gt; hour
&lt;HH&gt; through operating date &lt;MM/DD/HH&gt; are available.</td>
<td>Notify each QSE of its awarded Ancillary Service Offer quantities in
each SASM, specifying Resource, Ancillary Service type, SASM MCPC, and
first and last hours of the awarded offer.</td>
<td><p>Market Message</p>
<p>Noun: AwardedAS</p>
<p>Synch: 4.3.2</p>
<p>Async: 5.3.8</p></td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>16</td>
<td><u>SASM-ASMCPC-RPT</u> Reports for SASM AS MCPC for SASM ID
&lt;<em>YYYYMMDDHHMMSS</em>&gt; from operating date &lt;MM/DD&gt; hour
&lt;HH&gt; through operating date &lt;MM/DD/HH&gt; are available.</td>
<td>Notify QSEs that SASM MCPC reports are available</td>
<td>QSE Data Available</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>17</td>
<td><u>DAM-ASINSUFF-NOTF</u> Due to AS Insufficiency, DAM market for
&lt;MM/DD/YYYY&gt; has reopened for AS offer resubmission. The DAM
market will close today at &lt;HH:MM&gt;.</td>
<td>ERCOT shall declare an Ancillary Service insufficiency and issue an
Alert under Section 6.5.9.3.3, Alert.</td>
<td>Watch</td>
<td>High</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>18</td>
<td><u>DAM-CLOSE-NOTF</u> DAM has closed for &lt;MM/DD/YYYY&gt;</td>
<td>Notify QSEs that the DAM has closed</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>19</td>
<td><u>DAM-RECLOSE-NOTF</u> DAM has closed due to AS Insufficiency for
&lt;MM/DD/YYYY&gt;.</td>
<td>Notify QSEs that the DAM has closed again after reopening for AS
insufficiency.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>20</td>
<td><u>CM-OPHRCLOSE-NOTF</u> Market has closed for &lt;MM/DD/YYYY&gt; hr
&lt;HH&gt;.</td>
<td>Notify QSEs that the Market has closed</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>21</td>
<td><u>CM-MKTOPEN-NOTF</u> Market has opened for
&lt;MM/DD/YYYY&gt;.</td>
<td>Notify QSEs that the Market has opened</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>22</td>
<td><u>CM-ADJOPEN-NOTF</u> Adjustment window has opened for
&lt;MM/DD/YYYY&gt;.</td>
<td>Notify QSEs that the adjustment window has opened</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>23</td>
<td><u>CM-ADJCLOSE-NOTF</u> Adjustment window has closed for
&lt;MM/DD/YYYY&gt; hr &lt;HH&gt;.</td>
<td>Notify QSEs that the adjustment window has closed</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>24</td>
<td><u>DAM-P2VAL-NOTF</u> Phase2 Validation has completed for the date:
&lt;MM/DD/YYYY&gt;</td>
<td>Notify QSEs that the Phase 2 validation (for credit validation, etc)
has completed.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>25</td>
<td><u>DAM-P2VAL-ERR</u> Phase2 Validation has failed for the date:
&lt;MM/DD/YYYY&gt;, type: &lt;DATA_TYPE&gt;. Please find the details in
the report &lt;REPORT_NAME&gt;.</td>
<td>Notify QSEs that the Phase 2 validation has failed.</td>
<td><p>Market Message</p>
<p>Noun: NONE</p>
<p>Synch: none</p>
<p>Async: none</p></td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>26</td>
<td><u>DAM-ASINSUFF-RPT</u> Reports on AS Insufficiency for operating
date &lt;MM/DD/YYYY&gt; are available.</td>
<td>Notify QSEs that AS Insufficiency reports are available</td>
<td><p>QSE Data Available</p>
<p>Noun: InsufficiencyReport</p>
<p>Synch: 4.3.46</p>
<p>Async: 5.3.15</p></td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>27</td>
<td><u>DAM-ASMCPC-RPT</u> Reports on AS MCPC for operating date
&lt;MM/DD/YYYY&gt; are available.</td>
<td>Notify QSEs that AS MCPC reports are available</td>
<td><p>QSE Data Available</p>
<p>Noun: MCPCs</p>
<p>Synch: 4.3.12</p>
<p>Async: none</p></td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>28</td>
<td><u>SASM-CLOSE-NOTF</u> SASM has closed for Self AS submission.</td>
<td>Notify QSEs that SASM has closed for AS submission</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>29</td>
<td><u>CM-COPCK-NOTF</u> Cop Update Check failed for Resource:
&lt;RESOURCE_NAME&gt;, Operating Date: &lt;MM/DD/YYYY&gt; , Operating
Hour: &lt;HH&gt;, Cop Status: &lt;XX&gt;</td>
<td>Notify QSEs who do not have complete COPs for all hours of the
current operating day and the following day</td>
<td>COP Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>30</td>
<td><u>CM-ASM-NOTF</u> AS_TYPE: &lt;AS_TYPE&gt;,
RES_NAME:&lt;RESOURCE_NAME&gt;, DEPLOY_MW: &lt;XX.XX&gt;, BEGIN_TIME:
&lt;MM/DD/YYYY&gt; &lt;HH&gt;24:MI:SS CST/CDT, END_TIME:
&lt;MM/DD/YYYY&gt; &lt;HH&gt;24:MI:SS CST/CDT, DURATION: &lt;XX.X&gt;
Hrs</td>
<td>Notify QSE of AS deployment</td>
<td>Market Message</td>
<td>High</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>31</td>
<td><u>CM-ASM-NOTF</u> AS_TYPE: ERS, QSE_NAME:&lt;QSE_NAME&gt;,
RAMP_TYPE: &lt;10 or 30&gt;, GROUP_NUMBER: &lt;1, 2, 3, etc.&gt;,
GROUP_TYPE: &lt;t or d&gt;, WS_TYPE: &lt;WS or NON-WS&gt; ,DEPLOY_MW:
&lt;XX.XX&gt;, BUSINESS_HOUR: &lt;TP1, TP2, TP3, TP4, TP5 or TP6&gt;,
BEGIN_TIME: &lt;YYYY-MM-DD HH24:MI:SS CST/CDT&gt;</td>
<td>Notify QSE of AS deployment for ERS</td>
<td>Market Message</td>
<td>High</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>32</td>
<td><u>CM-ASM-NOTF</u> AS_TYPE: &lt;AS_TYPE&gt;, DEPLOY_MW:
&lt;XX.XX&gt;, BEGIN_TIME: &lt;MM/DD/YYYY HH24:MI:SS CST/CDT&gt;,
END_TIME: &lt;MM/DD/YYYY HH24:MI:SS CST/CDT&gt;, DURATION: &lt;XX.X&gt;
Hrs</td>
<td>Notify QSE of AS deployment Summary</td>
<td>Market Message</td>
<td>High</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>33</td>
<td><u>CM-ASM-NOTF</u> ERCOT Emergency Response
&lt;Service-10/Service-30&gt; is Being &lt;Deployed/ Recalled&gt;</td>
<td>ERS Recall and Deployment messages</td>
<td>Operational Information</td>
<td>High</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>34</td>
<td><u>CM-VDI-NOTF</u> Verbal Dispatch Instructions for acknowledgement
have been sent for the Resource: <em>&lt;RESOURCE_NAME&gt;</em></td>
<td>Confirm with a QSE that VDIs were sent for a resource</td>
<td>Market Message</td>
<td>Low</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>35</td>
<td><u>CM-SWCAP-NOTF</u> SWCAP has been changed for AS/ENGY to
&lt;XXXX.XX&gt;</td>
<td>Notify QSEs that the system-wide offer cap has changed for AS,
Energy, or both.</td>
<td>Market Message</td>
<td>High</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>36</td>
<td><u>CM-COPVAL-NOTF</u> For CC Unit: UNIT_NAME, there are two or more
modes online for Date: &lt;MM/DD/YYYY&gt;</td>
<td>MMS hourly process that checks the COP for combined cycle
configurations and will issue warning messages sent to the QSE if two or
more configurations are marked as online in any one of the remaining
hours of today and all the hours for tomorrow.</td>
<td>Market Message</td>
<td>High</td>
<td>A QSEs</td>
</tr>
<tr class="odd">
<td>37</td>
<td>CM-COPVAL-NOTF For resource: &lt;RESOURCE_NAME&gt; the COP Status
does not match with the other jointly owned units belonging to Physical
&lt;RESOURCE_NAME&gt; for Date: &lt;MM/DD/YYYY&gt; for one or more
hours</td>
<td>MMS hourly process that issues warning messages to QSEs if two or
more jointly owned units belonging to the same physical resource do not
have the same Resource Status in the COP for any of the remaining hours
of today and all the hours of tomorrow.</td>
<td>Market Message</td>
<td>High</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>38</td>
<td><u>SCED-ADJPER-WARN</u> End of Adjustment Period: Reported
warning(s) for Hour: &lt;HH&gt; and Date: &lt;MM/DD/YYYY&gt; Please find
the details in the report &lt;REPORT_NAME&gt;.</td>
<td>MMS hourly process that checks for Output Schedule ramp rate and
HSL/LSL violations for the hour interval that is at the end of the
Adjustment Period.</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>39</td>
<td><u>SCED-TWOHR-WARN</u> Two Hour Notification: Reported warning(s)
for Hour: &lt;HH&gt; and Date: &lt;MM/DD/YYYY&gt; Please find the
details in the report &lt;REPORT_NAME&gt;.</td>
<td>MMS hourly process that checks for Output Schedule ramp rate and
HSL/LSL violations for the hour interval two hours from current
time.</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>40</td>
<td><u>CM-ASUND-FAIL-NOTF</u> AS Undeliverable for:
&lt;raic_resource_name&gt; on trade date: &lt;tradedate&gt; at delivery
time &lt;delivery_hour, &lt;HH&gt;24:&lt;delivery_min&gt; for AS Type:
&lt;as_type&gt;, RUC Type: &lt;ruc_type&gt;, Violated MW:
&lt;violated_mw&gt; [of &lt;cop_as_mw&gt;].</td>
<td>Notify QSE</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>41</td>
<td><u>DRUC-CLOSE-NOTF</u> DRUC has closed for &lt;MM/DD/YYYY&gt;</td>
<td>Notify QSEs that the DRUC has closed</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>42</td>
<td><u>DAM-DSRLDTEL-NOTF</u> DSR Load Telemetry Notification: DSR Load
Telemetry is lost for more than &lt;MIN&gt; mins</td>
<td>Notify QSE that their DSR Load signal has been lost, which results
in suspension of DSR output schedule validation. (This alert will be
generated as often as every 5 minutes).</td>
<td>Submission Warning</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>43</td>
<td><u>WRUC-COMP-NOTF</u> WRUC has completed for mm/dd/yyyy.</td>
<td>Notify QSEs that the WRUC has completed.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>44</td>
<td><u>SCED-COMP-NOTF</u><br />
SCED has completed for MM/DD/YYYY HH&lt;24&gt;:MI:SS.</td>
<td>Notify QSEs that SCED has completed.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>45</td>
<td><u>PRC_CORR_SCED</u></td>
<td>Notify QSEs that SCED price corrections are available.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>46</td>
<td><u>PRC_CORR_DAM</u></td>
<td>Notify QSEs that DAM price corrections are available.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>47</td>
<td><u>PRC_CORR_SASM</u></td>
<td>Notify QSEs that SASM price corrections are available.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>48</td>
<td><u>RTD-COMP-NOTF</u> RTD has completed for MM/DD/YYYY
HH24:MI:SS</td>
<td>Notify QSEs that an RTD run has completed.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="odd">
<td>49</td>
<td><u>ETAG-NOTF</u> DC Tie e-Tag &lt;NERC_TAG&gt; for DC Tie
&lt;DC_TIE_NAME&gt; on &lt;DELIVERY_DATE&gt; with a total flow of
&lt;QTY&gt; MWhs was processed by ERCOT for &lt;QSE&gt; whose PSE is
&lt;PSE&gt;.</td>
<td>Certified Notice to QSE when a confirmed e-Tag is downloaded,
cancelled, or curtailed by ERCOT’s systems.</td>
<td>Market Message</td>
<td>Low</td>
<td>All QSEs</td>
</tr>
<tr class="even">
<td>50</td>
<td><u>CM-COP-UPD-NOTF</u> COP HSL for &lt;GEN_RES&gt; on trade date
&lt;MM/DD/YYYY&gt; hour &lt;HR&gt; has been updated to
&lt;VALUE&gt;</td>
<td>Notify QSE when a WGR’s or PVGR’s COP HSL value is updated with the
forecast value.</td>
<td>Market Message</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>51</td>
<td><p><u>CM-SCED-NOTIF</u>  </p>
<p>&lt;resource_name&gt; status &lt;original_status&gt; overridden to
&lt;new_status&gt;, SCED at  &lt;YYYY-MM-DD HH24:MI:SS&gt;</p></td>
<td>Notify a QSE whose resource status has been overwritten by
SCED.</td>
<td>Market Message</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="even">
<td>52</td>
<td><u>CM-SCED-NOTIF</u> &lt;resource_name&gt; buyback status: &lt;Y or
N&gt;, set by SCED &lt;YYYY-MM-DD HH24:MI:SS&gt;</td>
<td>Notify a QSE of the BUYBACK status of the RUC block once SCED sets
the BUYBACK_FLAG (Y or N) for the RUC block.</td>
<td>Market Message</td>
<td>Med</td>
<td>A QSE</td>
</tr>
<tr class="odd">
<td>53</td>
<td><u>CM-VDI-NOTIF</u> Verbal Dispatch Instructions for FFSS have been
sent for Resource &lt;resource_name&gt; with deployed MW of &lt;QTY&gt;,
Initiation Time &lt;MM/DD/YYYY HH24:MI:SS&gt;,  Completion Time is
&lt;NULL or MM/DD/YYYY HH24:MI:SS&gt;</td>
<td>Confirm with a QSE that FFSS VDIs were sent for a resource</td>
<td>Market Message</td>
<td>Med</td>
<td>A QSE</td>
</tr>
</tbody>
</table>
