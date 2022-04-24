<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <ESIIDUSAGE_LIST_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                   xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <ESIIDUSAGE_LIST>
      <xsl:element name="ESIID">
        <xsl:value-of select="ESIID" />
      </xsl:element>
      <xsl:element name="TransactionID">
        <xsl:value-of select="TRANSACTION_ID" />
      </xsl:element>
      <xsl:element name="StartTime">
        <xsl:value-of select="START_TIME" />
      </xsl:element>
      <xsl:element name="StopTime">
        <xsl:value-of select="STOP_TIME" />
      </xsl:element>
      <xsl:element name="MeterType">
        <xsl:value-of select="METER_TYPE" />
      </xsl:element>
      </ESIIDUSAGE_LIST>
    </xsl:for-each>
  </ESIIDUSAGE_LIST_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>   