<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <ESIIDUSAGE_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                   xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <ESIIDUSAGE>
      <xsl:element name="UIDESIID">
        <xsl:value-of select="UIDESIID" />
      </xsl:element>
      <xsl:element name="StartTime">
        <xsl:value-of select="STARTTIME" />
      </xsl:element>
      <xsl:element name="StopTime">
        <xsl:value-of select="STOPTIME" />
      </xsl:element>
      <xsl:element name="BillMonth">
        <xsl:value-of select="BILLMONTH" />
      </xsl:element>
      <xsl:element name="MeterType">
        <xsl:value-of select="METERTYPE" />
      </xsl:element>
      <xsl:element name="Total">
        <xsl:value-of select="TOTAL" />
      </xsl:element>
      <xsl:element name="ReadStatus">
        <xsl:value-of select="READSTATUS" />
      </xsl:element>
      <xsl:element name="AVGDAILYUSG">
        <xsl:value-of select="AVGDAILYUSG" />
      </xsl:element>
      <xsl:element name="ONPK">
        <xsl:value-of select="ONPK" />
      </xsl:element>
      <xsl:element name="OFFPK">
        <xsl:value-of select="OFFPK" />
      </xsl:element>
      <xsl:element name="MDPK">
        <xsl:value-of select="MDPK" />
      </xsl:element>
      <xsl:element name="SPK">
        <xsl:value-of select="SPK" />
      </xsl:element>
      <xsl:element name="ONPKADU">
        <xsl:value-of select="ONPKADU" />
      </xsl:element>
      <xsl:element name="OFFPKADU">
        <xsl:value-of select="OFFPKADU" />
      </xsl:element>
      <xsl:element name="MDPKADU">
        <xsl:value-of select="MDPKADU" />
      </xsl:element>
      <xsl:element name="SPKADU">
        <xsl:value-of select="SPKADU" />
      </xsl:element>
      <xsl:element name="AddTime">
        <xsl:value-of select="ADDTIME" />
      </xsl:element>
      <xsl:element name="GLOBPROCID">
        <xsl:value-of select="GLOBPROCID" />
      </xsl:element>
      <xsl:element name="TimeStamp">
        <xsl:value-of select="TIMESTAMP" />
      </xsl:element>
      <xsl:element name="ESIID">
        <xsl:value-of select="ESIID" />
      </xsl:element>
      </ESIIDUSAGE>
    </xsl:for-each>
  </ESIIDUSAGE_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>