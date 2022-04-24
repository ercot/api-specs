<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <PROFILECLASS_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <PROFILECLASS>
      <xsl:element name="ProfileCode">
        <xsl:value-of select="PROFILECODE" />
      </xsl:element>
      <xsl:element name="WeatherSensitivity">
        <xsl:value-of select="WEATHERSENSITIVITY" />
      </xsl:element>
      <xsl:element name="MeterType">
        <xsl:value-of select="METERTYPE" />
      </xsl:element>
      <xsl:element name="StartTime">
        <xsl:value-of select="STARTTIME" />
      </xsl:element>
      <xsl:element name="StopTime">
        <xsl:value-of select="STOPTIME" />
      </xsl:element>
      <xsl:element name="AddTime">
        <xsl:value-of select="ADDTIME" />
      </xsl:element>
      <xsl:element name="TOUType">
        <xsl:value-of select="TOUTYPE" />
      </xsl:element>
      <xsl:element name="PROFILECUTCODE">
        <xsl:value-of select="PROFILECUTCODE" />
      </xsl:element>
      </PROFILECLASS>
    </xsl:for-each>
  </PROFILECLASS_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>