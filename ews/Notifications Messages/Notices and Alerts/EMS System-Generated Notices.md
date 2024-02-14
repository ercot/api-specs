### EMS System-Generated Notices

The following notices are Energy Management System (EMS)
system-generated and will display on the MIS website’s Notices page.
Additionally these notices are sent out asynchronously to the Market
Participants(MP) Listeners.

When an alert clears (or becomes normal) in EMS, a subsequent alert will
be generated with text (“-RETURN”) appended to original alert. This
follow-up alert will also be displayed on the MIS website’s Notices page
and delivered to MP listeners.

The following table identifies the Resource Limit Calculator (RLC) alarm
ID, description of the requirement, notice type, priority, audience, and
alert text. Please note that any alert with a \* in the description
denotes that the resource has become undispatchable by SCED, and RLC
will set HDL=LDL=MW Output.

<table>
<colgroup>
<col style="width: 9%" />
<col style="width: 14%" />
<col style="width: 16%" />
<col style="width: 12%" />
<col style="width: 11%" />
<col style="width: 12%" />
<col style="width: 22%" />
</colgroup>
<thead>
<tr class="header">
<th>#</th>
<th>ALARMID</th>
<th><blockquote>
<p>Description</p>
</blockquote></th>
<th>Type</th>
<th>Priority</th>
<th>Audience</th>
<th>Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>RLCUHSL</td>
<td>The telemetered HSL &lt;= 0. *</td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT: TEL HSL BELOW 0</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="even">
<td>2</td>
<td>RLCULSL</td>
<td>The telemetered LSL &lt; 0. *</td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT: TEL LSL BELOW 0</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="odd">
<td>3</td>
<td>RLCHSLAS</td>
<td>HSL - LSL &lt; Sum of Reg-Up Responsibility, Reg-Down
Responsibility, Responsive Responsibility and Non-Spin Responsibility.
*</td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT: HSL MINUS LSL BELOW
SUM OF AS RESP</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="even">
<td>4</td>
<td>RLCSCEUR</td>
<td>SCED Up Ramp Rate &lt;= 0.</td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT: SURAMP BELOW 0</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="odd">
<td>5</td>
<td>RLCSCEDR</td>
<td><blockquote>
<p>SCED Down Ramp Rate &lt;= 0.</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT:</p>
<p>SDRAMP BELOW 0</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="even">
<td>6</td>
<td>RLCCCNO</td>
<td><blockquote>
<p>For Combined Cycle configuration number validation, set it to default
or last good value not 0. *</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT:</p>
<p>INVALID CC CONFIG</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>RLCHLSL</p>
</blockquote></td>
<td><blockquote>
<p>Invalid HSL or LSL telemetry (quality suspect). *</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT:</p>
<p>INVALID TEL HSL OR LSL</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>RLCXGTBD</p>
</blockquote></td>
<td><blockquote>
<p>Invalid or suspect resource status codes. *</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT:</p>
<p>INVALID TEL RST</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="odd">
<td>9</td>
<td><blockquote>
<p>BCRSMTCH</p>
</blockquote></td>
<td><blockquote>
<p>Add a SCADA calculation to sum the Mw telemetry of transmission lines
moving power from a generating plant.  Compare this total to the sum of
the telemetered Mw output of the Resources at the same plant.  Alarm the
QSE if the amount exceeds a threshold.</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>ALERT :&lt;RES_ID&gt; - TEL MW= &lt;VALUE&gt; TRANS SUM=
&lt;VALUE&gt;</p>
<p>Note:</p>
<p>&lt;RES_ID&gt; &lt;SUBSTATION&gt; &lt;UNIT#&gt;</p></td>
</tr>
<tr class="even">
<td>10</td>
<td>RLCSUSMW</td>
<td><blockquote>
<p>If the HDL = LDL = Actual Generation and Resource Status is not OFF
then alarm the QSE operator to verify data telemetry used by RLC. *</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT:</p>
<p>SUSPECT TEL HDL=LDL=MW</p></td>
</tr>
<tr class="odd">
<td>11</td>
<td><blockquote>
<p>RLCRSTMW</p>
</blockquote></td>
<td><blockquote>
<p>If Resource Status is OFF, and Resource output Mw is greater than 2
Mw, then alarm incorrect status.</p>
<p>If Resource Status is ON, but MW &lt; 0.1 MW, then alarm incorrect
status.</p>
<p>RLC will set RST to “N/A” and set HDL=LDL=MW Output – SDRAMP * 5.</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE: &lt;QSE_ID&gt; UNIT: &lt;ID&gt; ALERT:</p>
<p>INCONSIST RST AND MW</p>
<p>Note: &lt;ID&gt; &lt;SUBSTATION&gt;-&lt;UNIT#&gt;</p></td>
</tr>
<tr class="even">
<td>12</td>
<td><p>URGDASRT</p>
<p>URRASRT</p>
<p>UNSRSRT</p></td>
<td><p>The Ancillary Responsibilities (Reg-Up, Reg-Down, Responsive and
Non-Spin) &lt; 0</p>
<blockquote>
<p>RLC will set the AS responsibility to 0.</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],REGUP AS RESP
&lt; 0</p>
<p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],REGDWN AS RESP &lt;
0</p>
<p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],RESP AS RESP &lt;
0</p>
<p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],NSPIN AS RESP &lt;
0</p></td>
</tr>
<tr class="odd">
<td>13</td>
<td><p>URRASRS</p>
<p>UNSRSRSS</p></td>
<td><p>The Ancillary Schedules (Responsive and Non-Spin) &lt; 0</p>
<blockquote>
<p>RLC will set the AS responsibility to 0.</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td><p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],RESP AS SCHED
&lt; 0</p>
<p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],NSPIN AS SCHED &lt;
0</p></td>
</tr>
<tr class="even">
<td>14</td>
<td><blockquote>
<p>BCVOLLUN</p>
</blockquote></td>
<td><blockquote>
<p>ERCOT shall notify each QSE representing the Split Generation
Resource of any errors in telemetry detected by the State Estimator.</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A QSE</td>
<td>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],SE SGU ERROR
MW=[123] TSUM=[1234],</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>BCABRANCH</p>
</blockquote></td>
<td><blockquote>
<p>Once transmission line and transformer Dynamic Ratings are retrieved,
ERCOT shall compare the actual flow and state estimated flow calculation
of MVA to the effective Transmission Element limit and, if an
out-of-limit condition exists, ERCOT shall produce an overload
notification</p>
</blockquote></td>
<td>Telemetry</td>
<td>High</td>
<td>A TSP</td>
<td><p>ALERT: &lt;SUBSTATION : EQUIPMENT IDENTIFICATION&gt;
&lt;value&gt;  TEL OVERLOAD</p>
<p>OR</p>
<p>ALERT: &lt;SUBSTATION : EQUIPMENT IDENTIFICATION&gt; &lt;value&gt;
 SE OVERLOAD</p></td>
</tr>
<tr class="even">
<td>16</td>
<td><p>UREGUP</p>
<p>UREGDN</p></td>
<td><p>The Reg-Up/Reg-Down Participation Factors &lt; 0.</p>
<p>RLC will set the Reg-Up/Reg-Down Participation Factors to 0.</p></td>
<td>Telemetry</td>
<td>High</td>
<td>QSE</td>
<td><p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],REGUP PF &lt;
0</p>
<p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],REGDOWN PF &lt; 0</p>
<p>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],HSL &gt; THAN
CURCAP</p></td>
</tr>
<tr class="odd">
<td>17</td>
<td>RLCHCAP</td>
<td>HSL is higher than the net dependable capability</td>
<td>Telemetry</td>
<td>High</td>
<td>QSE</td>
<td>QSE:[qse], SUBSTATION:[substn], UNIT:[unitname],HSL &gt; THAN
CURCAP</td>
</tr>
<tr class="even">
<td>18</td>
<td><blockquote>
<p>LFUPDT</p>
</blockquote></td>
<td><blockquote>
<p>ERCOT System, Weather Zone, and Load Zone Load forecasts for the next
seven days, by hour, and a message on update indicating any changes to
the forecasts by means of the Messaging System;</p>
</blockquote></td>
<td>Market Message</td>
<td>Low</td>
<td>All MPs</td>
<td>ERCOT 7 DAY LF UPDATED &lt;Add Alert Time&gt;</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>EMS-LDF-UPDATE-VERIFICATION</p>
</blockquote></td>
<td><blockquote>
<p>Notify QSEs of posting and availability of report NP4-159: Load
Distribution Factors.</p>
</blockquote></td>
<td>Market Message</td>
<td>Low</td>
<td>All MPs</td>
<td><u>EMS-LDF-UPDATE-VERIFICATION</u> completed on &lt;YYYY-MM-DD
HH24:MI:SS&gt;. The LDF Report will be available by &lt;YYYY-MM-DD
HH24:MI:SS&gt;</td>
</tr>
</tbody>
</table>

