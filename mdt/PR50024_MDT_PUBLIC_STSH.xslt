<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <STATIONSERVICEHIST_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <STATIONSERVICEHIST>
          <xsl:if test="STATIONCODE">
		      <xsl:element name="StationCode">
		        <xsl:value-of select="STATIONCODE" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="STARTTIME">
		      <xsl:element name="StartTime">
		        <xsl:value-of select="STARTTIME" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="STOPTIME">
		      <xsl:element name="StopTime">
		        <xsl:value-of select="STOPTIME" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="UFEZONECODE">
		  	<xsl:element name="UFEZONECODE">
		        <xsl:value-of select="UFEZONECODE" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="CMZONECODE">
		      <xsl:element name="CMZONECode">
		        <xsl:value-of select="CMZONECODE" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="ADDTIME">
		      <xsl:element name="AddTime">
		        <xsl:value-of select="ADDTIME" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="SUBUFECODE">
		      <xsl:element name="SUBUFECODE">
		        <xsl:value-of select="SUBUFECODE" />
		      </xsl:element>
		  </xsl:if>
		  <xsl:if test="UIDSETLPOINT">
		  	<xsl:element name="UIDSetlPoint">
		        <xsl:value-of select="UIDSETLPOINT" />
		      </xsl:element>
		  </xsl:if>
      </STATIONSERVICEHIST>
    </xsl:for-each>
  </STATIONSERVICEHIST_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>