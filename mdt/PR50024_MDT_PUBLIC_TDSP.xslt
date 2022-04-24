<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <TDSP_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <TDSP>
      <xsl:element name="TDSPCode">
        <xsl:value-of select="TDSPCODE" />
      </xsl:element>
      <xsl:element name="TDSPName">
        <xsl:value-of select="TDSPNAME" />
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
      <xsl:element name="NOIECODE">
        <xsl:value-of select="NOIECODE" />
      </xsl:element>
      </TDSP>
    </xsl:for-each>
  </TDSP_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>