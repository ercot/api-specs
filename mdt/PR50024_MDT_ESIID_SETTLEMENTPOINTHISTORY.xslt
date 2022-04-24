<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <SETLPOINTHISTORY_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <SETLPOINTHISTORY>
	      <xsl:if test="UIDSETLPOINT">
				<xsl:element name="UIDSETLPOINT">
				<xsl:value-of select="UIDSETLPOINT" />
				</xsl:element>
	      </xsl:if>
		  <xsl:if test="STARTTIME">
				<xsl:element name="STARTTIME">
				<xsl:value-of select="STARTTIME" />
				</xsl:element>
		  </xsl:if>
		  <xsl:if test="STOPTIME">
				<xsl:element name="STOPTIME">
				<xsl:value-of select="STOPTIME" />
				</xsl:element>
		  </xsl:if>
	      <xsl:if test="UIDSETLPOINTTYPE">
				<xsl:element name="UIDSETLPOINTTYPE">
				<xsl:value-of select="UIDSETLPOINTTYPE" />
				</xsl:element>
	      </xsl:if>
	      <xsl:if test="CMZONECODE">
				<xsl:element name="CMZONECODE">
				<xsl:value-of select="CMZONECODE" />
				</xsl:element>
		  </xsl:if>
		  <xsl:if test="LSTIME">
				<xsl:element name="LSTIME">
				<xsl:value-of select="LSTIME" />
				</xsl:element>
		  </xsl:if>
      </SETLPOINTHISTORY>
    </xsl:for-each>
  </SETLPOINTHISTORY_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>