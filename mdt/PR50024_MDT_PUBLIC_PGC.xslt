<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <PGC_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <PGC>
      <xsl:element name="PGCCode">
        <xsl:value-of select="PGCCODE" />
      </xsl:element>
      <xsl:element name="PGCName">
        <xsl:value-of select="PGCNAME" />
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
      <xsl:element name="DUNSNumber">
        <xsl:value-of select="DUNSNUMBER" />
      </xsl:element>
      </PGC>
    </xsl:for-each>
  </PGC_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>