<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <SETLPOINTTYPE_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <SETLPOINTTYPE>
      	 <xsl:if test="UIDSETLPOINTTYPE">
			<xsl:element name="UIDSETLPOINTTYPE">
			<xsl:value-of select="UIDSETLPOINTTYPE"/>
			</xsl:element>
		 </xsl:if>
      	 <xsl:if test="SETLPOINTTYPE">
			<xsl:element name="SETLPOINTTYPE">
			<xsl:value-of select="SETLPOINTTYPE"/>
			</xsl:element>
		 </xsl:if>
      	 <xsl:if test="DESCRIPTION">
			<xsl:element name="DESCRIPTION">
			<xsl:value-of select="DESCRIPTION"/>
			</xsl:element>
	     </xsl:if>
      	 <xsl:if test="LSTIME">
			<xsl:element name="LSTIME">
			<xsl:value-of select="LSTIME"/>
			</xsl:element>
		 </xsl:if>
      </SETLPOINTTYPE>
    </xsl:for-each>
  </SETLPOINTTYPE_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>