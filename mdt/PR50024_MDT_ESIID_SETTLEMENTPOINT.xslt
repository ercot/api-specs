<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <SETTLEMENTPOINT_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <SETTLEMENTPOINT>
      	   <xsl:if test="UIDSETLPOINT">
		      <xsl:element name="UIDSETLPOINT">
		        <xsl:value-of select="UIDSETLPOINT" />
		      </xsl:element>
      	   </xsl:if>
      	   <xsl:if test="SETLPOINTCODE">
		      <xsl:element name="SETLPOINTCODE">
		        <xsl:value-of select="SETLPOINTCODE" />
		      </xsl:element>
      	   </xsl:if>
      	   <xsl:if test="LSTIME">
		      <xsl:element name="LSTIME">
		        <xsl:value-of select="LSTIME" />
		      </xsl:element>
		   </xsl:if>
      </SETTLEMENTPOINT>
    </xsl:for-each>
  </SETTLEMENTPOINT_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>