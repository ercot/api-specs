# Appendix H: DST XML Examples 

The purpose of this section is to provide an high level DST(daylight
time) XML examples for different types operations.

- BidSet or other submission examples for DST long day:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-06/nodal/ews">
    <tradingDate>2010-11-07</tradingDate>
    <ASOffer>
        <startTime>2010-11-07T00:00:00.000-05:00</startTime>
        <endTime>2010-11-08T00:00:00.000-06:00</endTime>
        <externalId>ERCOTTESt</externalId>
        <expirationTime>2010-11-07T23:59:00.000-06:00</expirationTime>
        <resource>XXXX_UNIT1</resource>
        <asType>REGUP-RRS-ONNS</asType>
        <ASPriceCurve>
            <startTime>2010-11-07T00:00:00.000-05:00</startTime>
            <endTime>2010-11-07T01:00:00.000-05:00</endTime>
            <OnLineReserves>
                <xvalue>10</xvalue>
                <ONNS>2</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <!-- DST normal hour -->
            <startTime>2010-11-07T01:00:00.000-05:00</startTime>
            <endTime>2010-11-07T01:00:00.000-06:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <!-- DST extra hour -->
            <startTime>2010-11-07T01:00:00.000-06:00</startTime>
            <endTime>2010-11-07T02:00:00.000-06:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <startTime>2010-11-07T02:00:00.000-06:00</startTime>
            <endTime>2010-11-07T03:00:00.000-06:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <startTime>2010-11-07T03:00:00.000-06:00</startTime>
            <endTime>2010-11-07T04:00:00.000-06:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <startTime>2010-11-07T04:00:00.000-06:00</startTime>
            <endTime>2010-11-07T05:00:00.000-06:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
    </ASOffer>
</BidSet>
~~~

- BidSet or other submission examples for DST short day:

~~~
<BidSet xmlns="http://www.ercot.com/schema/2007-06/nodal/ews">
    <tradingDate>2011-03-13</tradingDate>
    <ASOffer>
        <startTime>2011-03-13T00:00:00.000-06:00</startTime>
        <endTime>2011-03-14T00:00:00.000-05:00</endTime>
        <externalId>ERCOTTESt</externalId>
        <expirationTime>2011-03-13T23:59:00.000-05:00</expirationTime>
        <resource>XXXX_UNIT1</resource>
        <asType>REGUP-RRS-ONNS</asType>
        <ASPriceCurve>
            <startTime>2011-03-13T00:00:00.000-06:00</startTime>
            <endTime>2011-03-13T01:00:00.000-06:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <!-- DST short hour -->
            <startTime>2011-03-13T01:00:00.000-06:00</startTime>
            <endTime>2011-03-13T03:00:00.000-05:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <startTime>2011-03-13T03:00:00.000-05:00</startTime>
            <endTime>2011-03-13T04:00:00.000-05:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <startTime>2011-03-13T04:00:00.000-05:00</startTime>
            <endTime>2011-03-13T05:00:00.000-05:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
        <ASPriceCurve>
            <startTime>2011-03-13T05:00:00.000-05:00</startTime>
            <endTime>2011-03-13T06:00:00.000-05:00</endTime>
            <OnLineReserves>
                <xvalue>11</xvalue>
                <ONNS>1</ONNS>
                <block>VARIABLE</block>
            </OnLineReserves>
        </ASPriceCurve>
    </ASOffer>
</BidSet>
~~~

- Refer to Section 2.3.4 for dateTime value conversions into mRID hours
  for continuous hour queries or cancels. This is applicable for BidSet
  related operations.

- XML examples for Report payloads(Awards etc) that contain dateTime
  values in ISO format.

DST Long Day:

~~~
<?xml version="1.0" encoding="UTF-8"?>
<AwardSet>
    <tradingDate>2010-11-07</tradingDate>
    <marketType>DAM</marketType>
    <AwardedCRR>
        <qse>TestQSE</qse>
        <startTime>2010-11-07T00:00:00-05:00</startTime>
        <endTime>2010-11-07T01:00:00-05:00</endTime>
        <tradingDate>2010-11-07</tradingDate>
        <marketType>DAM</marketType>
        <awardedMW>3</awardedMW>
        <price>0</price>
        <source>Source1</source>
        <sink>Sink1</sink>
        <crrId>12345</crrId>
        <offerId>1234</offerId>
    </AwardedCRR>
    <AwardedCRR>
        <qse>TestQSE</qse>
        <startTime>2010-11-07T01:00:00-05:00</startTime>
        <endTime>2010-11-07T01:00:00-06:00</endTime>
        <tradingDate>2010-11-07</tradingDate>
        <marketType>DAM</marketType>
        <awardedMW>3</awardedMW>
        <price>0</price>
        <source>Source1</source>
        <sink>Sink1</sink>
        <crrId>12345</crrId>
        <offerId>1234</offerId>
    </AwardedCRR>
    <AwardedCRR>
        <qse>TestQSE</qse>
        <startTime>2010-11-07T01:00:00-06:00</startTime>
        <endTime>2010-11-07T02:00:00-06:00</endTime>
        <tradingDate>2010-11-07</tradingDate>
        <marketType>DAM</marketType>
        <awardedMW>3</awardedMW>
        <price>0</price>
        <source>Source1</source>
        <sink>Sink1</sink>
        <crrId>12345</crrId>
        <offerId>1234</offerId>
    </AwardedCRR>
    <AwardedCRR>
        <qse>TestQSE</qse>
        <startTime>2010-11-07T02:00:00-06:00</startTime>
        <endTime>2010-11-07T03:00:00-06:00</endTime>
        <tradingDate>2010-11-07</tradingDate>
        <marketType>DAM</marketType>
        <awardedMW>3</awardedMW>
        <price>0</price>
        <source>Source1</source>
        <sink>Sink1</sink>
        <crrId>12345</crrId>
        <offerId>1234</offerId>
    </AwardedCRR>
    <AwardedCRR>
        <qse>TestQSE</qse>
        <startTime>2010-11-07T03:00:00-06:00</startTime>
        <endTime>2010-11-07T04:00:00-06:00</endTime>
        <tradingDate>2010-11-07</tradingDate>
        <marketType>DAM</marketType>
        <awardedMW>3</awardedMW>
        <price>0</price>
        <source>Source1</source>
        <sink>Sink1</sink>
        <crrId>12345</crrId>
        <offerId>1234</offerId>
    </AwardedCRR>
</AwardSet>
~~~

DST Short Day

~~~
<?xml version="1.0" encoding="UTF-8"?>
<ns1:ASObligations xmlns:ns0="http://www.ercot.com/schema/2007-05/nodal/eip/il" xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.ercot.com/schema/2007-06/nodal/ews ErcotInformation.xsd">
	<ns1:ASObligation>
		<ns1:startTime>2011-03-13T00:00:00-06:00</ns1:startTime>
		<ns1:endTime>2011-03-13T01:00:00-06:00</ns1:endTime>
		<ns1:TmPoint>
			<ns1:time>2011-03-13T00:00:00-06:00</ns1:time>
<ns1:ending>2011-03-13T01:00:00-06:00</ns1:ending> <ns1:value1>133.8</ns1:value1>
		</ns1:TmPoint>
		<ns1:asType>Reg-Down</ns1:asType>
		<ns1:qse>QSE</ns1:qse>
	</ns1:ASObligation>
	<ns1:ASObligation>
		<ns1:startTime>2011-03-13T01:00:00-06:00</ns1:startTime>
		<ns1:endTime>2011-03-13T03:00:00-05:00</ns1:endTime>
		<ns1:TmPoint>
			<ns1:time>2011-03-13T01:00:00-06:00</ns1:time>
<ns1:ending>2011-03-13T03:00:00-05:00</ns1:ending>
			<ns1:value1>164.7</ns1:value1>
		</ns1:TmPoint>
		<ns1:asType>Reg-Down</ns1:asType>
		<ns1:qse>QSE</ns1:qse>
	</ns1:ASObligation>
	<ns1:ASObligation>
		<ns1:startTime>2011-03-13T03:00:00-05:00</ns1:startTime>
		<ns1:endTime>2011-03-13T04:00:00-05:00</ns1:endTime>
		<ns1:TmPoint>
			<ns1:time>2011-03-13T03:00:00-05:00</ns1:time>
<ns1:ending>2011-03-13T01400:00-05:00</ns1:ending>
			<ns1:value1>473.6</ns1:value1>
		</ns1:TmPoint>
		<ns1:asType>Reg-Down</ns1:asType>
		<ns1:qse>QSE</ns1:qse>
	</ns1:ASObligation>
</ns1:ASObligations>
~~~

- XML examples for Report payloads(StartupShutdownInstructions etc) that
  contain deliveryHout/hourEnding rinstead of timestmps in payload.

~~~
<?xml version="1.0" encoding="UTF-8"?>
<ns1:StartupShutdownInstructions xmlns:ns0="http://www.ercot.com/schema/2007-05/nodal/eip/il" xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews">
    <ns1:StartupShutdown>
        <ns1:rucType>DRUC</ns1:rucType>
        <ns1:hourEnding>01</ns1:hourEnding>
        <ns1:deliveryDate>2010-11-07</ns1:deliveryDate>
        <ns1:resource>Res_UNIT1</ns1:resource>
        <ns1:clearedCommit>true</ns1:clearedCommit>
        <ns1:clearedDecommit>false</ns1:clearedDecommit>
        <ns1:decommitReasonCode/>
        <ns1:reportDate>2010-11-06T15:47:55-05:00</ns1:reportDate>
    </ns1:StartupShutdown>
    <ns1:StartupShutdown>
        <ns1:rucType>DRUC</ns1:rucType>
        <ns1:hourEnding>2</ns1:hourEnding>
        <ns1:deliveryDate>2010-11-07</ns1:deliveryDate>
        <ns1:resource>Res_UNIT1</ns1:resource>
        <ns1:clearedCommit>true</ns1:clearedCommit>
        <ns1:clearedDecommit>false</ns1:clearedDecommit>
        <ns1:decommitReasonCode/>
        <ns1:reportDate>2010-11-06T15:47:55-05:00</ns1:reportDate>
    </ns1:StartupShutdown>
    <!-- DST Extra hour -->
        <ns1:StartupShutdown>
        <ns1:rucType>DRUC</ns1:rucType>
        <ns1:hourEnding>2*</ns1:hourEnding>
        <ns1:deliveryDate>2010-11-07</ns1:deliveryDate>
        <ns1:resource>Res_UNIT1</ns1:resource>
        <ns1:clearedCommit>true</ns1:clearedCommit>
        <ns1:clearedDecommit>false</ns1:clearedDecommit>
        <ns1:decommitReasonCode/>
        <ns1:reportDate>2010-11-06T15:47:55-05:00</ns1:reportDate>
        </ns1:StartupShutdown>
        <ns1:StartupShutdown>
        <ns1:rucType>DRUC</ns1:rucType>
        <ns1:hourEnding>3</ns1:hourEnding>
        <ns1:deliveryDate>2010-11-07</ns1:deliveryDate>
        <ns1:resource>Res_UNIT1</ns1:resource>
        <ns1:clearedCommit>true</ns1:clearedCommit>
        <ns1:clearedDecommit>false</ns1:clearedDecommit>
        <ns1:decommitReasonCode/>
        <ns1:reportDate>2010-11-06T15:47:55-05:00</ns1:reportDate>
        </ns1:StartupShutdown>
        <ns1:StartupShutdown>
        <ns1:rucType>DRUC</ns1:rucType>
        <ns1:hourEnding>04</ns1:hourEnding>
        <ns1:deliveryDate>2010-11-07</ns1:deliveryDate>
        <ns1:resource>Res_UNIT1</ns1:resource>
        <ns1:clearedCommit>true</ns1:clearedCommit>
        <ns1:clearedDecommit>false</ns1:clearedDecommit>
        <ns1:decommitReasonCode/>
        <ns1:reportDate>2010-11-06T15:47:55-05:00</ns1:reportDate>
        </ns1:StartupShutdown>
        <ns1:StartupShutdown>
        <ns1:rucType>DRUC</ns1:rucType>
        <ns1:hourEnding>05</ns1:hourEnding>
        <ns1:deliveryDate>2010-11-07</ns1:deliveryDate>
        <ns1:resource>Res_UNIT1</ns1:resource>
        <ns1:clearedCommit>true</ns1:clearedCommit>
        <ns1:clearedDecommit>false</ns1:clearedDecommit>
        <ns1:decommitReasonCode/>
        <ns1:reportDate>2010-11-06T15:47:55-05:00</ns1:reportDate>
    </ns1:StartupShutdown> 
</ns1:StartupShutdownInstructions>
~~~

- XML notice examples for notices that contain deliveryHour or
  hourEnding in the message.

~~~
<ns1:ResponseMessage xmlns:ns1="http://www.ercot.com/schema/2007-06/nodal/ews/message">
    <ns1:Header>
        <ns1:Verb>created</ns1:Verb>
        <ns1:Noun>Alert</ns1:Noun>
        <ns1:ReplayDetection>
            <ns1:Nonce>1c311e4c96d6e983a36ac3aac1b3116a</ns1:Nonce>
            <ns1:Created>2010-11-07T00:02:48.024-05:00</ns1:Created>
        </ns1:ReplayDetection>
        <ns1:Revision>1.19O</ns1:Revision>
        <ns1:Source>ERCOT</ns1:Source>
        <ns1:UserID>USER1</ns1:UserID>
        <ns1:MessageID>SCED-TWOHR-FAIL-QSE-2010-11-07T00:02:47.747-05:00</ns1:MessageID>
    </ns1:Header>
    <ns1:Reply>
        <ns1:ReplyCode>OK</ns1:ReplyCode>
        <ns1:Timestamp>2010-11-07T00:02:48.024-05:00</ns1:Timestamp>
    </ns1:Reply>
    <ns1:Payload>
        <ns2:Event xmlns:ns2="http://www.ercot.com/schema/2007-06/nodal/ews">
            <ns2:qse>QSE</ns2:qse>
            <ns2:ID>SCED-TWOHR-FAIL</ns2:ID>
            <ns2:type>Submission Warning</ns2:type>
            <ns2:priority>Medium</ns2:priority>
            <ns2:source>ERCOT</ns2:source>
            <ns2:issued>2010-11-07T00:02:47.747-05:00</ns2:issued>
            <ns2:summary>SCED-TWOHR-FAIL Two Hour Notification: Check FAILED due to missing Output Schedules/Energy Offer Curves for Resource: LPCCS_CC2_4, Hour: 02* and Date: 11/07/2010</ns2:summary>
        </ns2:Event>
        <ns1:format>XML</ns1:format>
    </ns1:Payload>
</ns1:ResponseMessage>
~~~

> [!NOTE]
> 02\* indicating DST extra hour