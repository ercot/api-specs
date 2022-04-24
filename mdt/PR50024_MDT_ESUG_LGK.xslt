<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <ESUG_LGK_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                   xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <ESUG_LGK>
      <xsl:element name="UIDESIID">
        <xsl:value-of select="UIDESIID" />
      </xsl:element>
      <xsl:element name="StartTime">
        <xsl:value-of select="START_TIME" />
      </xsl:element>
      <xsl:element name="StopTime">
        <xsl:value-of select="STOP_TIME" />
      </xsl:element>
      <xsl:element name="BillMonth">
        <xsl:value-of select="BILLMONTH" />
      </xsl:element>
      <xsl:element name="MeterType">
        <xsl:value-of select="METER_TYPE" />
      </xsl:element>
      <xsl:element name="TimeStamp">
        <xsl:value-of select="TIMESTAMP" />
      </xsl:element>
      </ESUG_LGK>
    </xsl:for-each>
  </ESUG_LGK_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>