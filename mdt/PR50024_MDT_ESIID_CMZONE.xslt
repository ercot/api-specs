<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <ESIID_CMZONE_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <ESIID_CMZONE>
      <xsl:element name="UIDESIID">
        <xsl:value-of select="UIDESIID" />
      </xsl:element>
      <xsl:element name="ESIID">
        <xsl:value-of select="ESIID" />
      </xsl:element>
      <xsl:element name="CMZONECode">
        <xsl:value-of select="CMZONE" />
      </xsl:element>
      <xsl:element name="StationCode">
        <xsl:value-of select="STATIONCODE" />
      </xsl:element>
      <xsl:element name="StationName">
        <xsl:value-of select="STATIONNAME" />
      </xsl:element>
      <xsl:element name="TradeDate">
        <xsl:value-of select="TRADE_DATE" />
      </xsl:element>
      </ESIID_CMZONE>
    </xsl:for-each>
  </ESIID_CMZONE_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>