<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <ESIID_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <ESIIDList>
      <xsl:element name="ESIID">
        <xsl:value-of select="ESIID" />
      </xsl:element>
      </ESIIDList>
    </xsl:for-each>
  </ESIID_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>