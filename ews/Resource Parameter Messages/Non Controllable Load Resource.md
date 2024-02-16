### Non Controllable Load Resource 

The following diagram defines the structure of a Non-Controllable Load
Resource that could be included within a ResParametersSet, using the
Non-ControllableLoadResource tag:

![Non Controllable Load Resource Structure](../Images/NoncontrollableLoadResource_Structure.png)

![Non Controllable Load Resource Parameters Structure](../Images//NoncontrollableLoadResourceParameters_Structure.png)

The error tag is used to return one or more errors that may be the
consequence of the failure of business or syntax validation rules for
NonControllableLoadResource submittals.

On submission, the following table describes the items used for a
Non-Controllable Load Resource change request.

| *Element*                    | *Req?* | *Datatype* | *Description*                                                  | *Values*                       |
|------------------------------|--------|------------|----------------------------------------------------------------|--------------------------------|
| mRID                         | N      | String     | ERCOT assigned                                                 |                                |
| externalId                   | N      | String     | External ID                                                    | QSE supplied                   |
| status                       | N      | String     | Return status                                                  | SUBMITTED, ACCEPTED, or ERRORS |
| Error/severity               | N      | String     | Error if any                                                   | Error text                     |
| Error/area                   | N      | String     | Error if any                                                   | Error text                     |
| Error/interval               | N      | String     | Error if any                                                   | Error text                     |
| Error/text                   | N      | String     | Error if any                                                   | Error text                     |
| resource                     | N      | String     | Resource name                                                  |                                |
| Details/minInterruptionTime  | Y      | float      |                                                                | time in hours                  |
| Details/minRestorationTime   | Y      | float      |                                                                | time in hours                  |
| Details/minNoticeTime        | Y      | float      |                                                                | time in hours                  |
| Details/maxInterruptionTime  | Y      | float      |                                                                | time in hours                  |
| Details/maxDailyDeployments  | Y      | Integer    |                                                                | Number                         |
| Details/maxWeeklyDeployments | Y      | Integer    |                                                                | Number                         |
| Details /maxWeeklyEnergy     | Y      | Integer    | max amount of energy a Resource is allowed to produce per week | MWh value                      |
| Details /reason              | Y      | String     | text reason for changing parameters                            | Description in plain text      |

The following is an XML example of a Non ControllableLoadResource:

~~~
<NonControllableLoadResource>
    <mRID>String</mRID>
    <externalId>String</externalId>
    <status>SUBMITTED</status>
    <error>
        <severity>ERROR</severity>
        <area>String</area>
        <interval>String</interval>
        <text>String</text>
    </error>
    <resource>String</resource>
    <Details>
        <minInterruptionTime>0</minInterruptionTime>
        <minRestorationTime>0</minRestorationTime>
        <minNoticeTime>0</minNoticeTime>
        <maxInterruptionTime>0</maxInterruptionTime>
        <maxDailyDeployments>0</maxDailyDeployments>
        <maxWeeklyDeployments>0</maxWeeklyDeployments>
        <maxWeeklyEnergy>0</maxWeeklyEnergy>
    </Details>
    <reason>String</reason>
</NonControllableLoadResource>
~~~
