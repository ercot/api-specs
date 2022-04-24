<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <ESIIDSERVICEHIST_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <ESIIDSERVICEHIST>
      <xsl:element name="UIDESIID">
        <xsl:value-of select="UIDESIID" />
      </xsl:element>
      <xsl:element name="StartTime">
        <xsl:value-of select="STARTTIME" />
      </xsl:element>
      <xsl:element name="StopTime">
        <xsl:value-of select="STOPTIME" />
      </xsl:element>
      <xsl:element name="RepCode">
        <xsl:value-of select="REPCODE" />
      </xsl:element>
      <xsl:element name="StationCode">
        <xsl:value-of select="STATIONCODE" />
      </xsl:element>
      <xsl:element name="ProfileCode">
        <xsl:value-of select="PROFILECODE" />
      </xsl:element>
      <xsl:element name="LossCode">
        <xsl:value-of select="LOSSCODE" />
      </xsl:element>
      <xsl:element name="AddTime">
        <xsl:value-of select="ADDTIME" />
      </xsl:element>
      <xsl:element name="DISPATCHFL">
        <xsl:value-of select="DIPATCHFL" />
      </xsl:element>
      <xsl:element name="MRECode">
        <xsl:value-of select="MRECODE" />
      </xsl:element>
      <xsl:element name="TDSPCode">
        <xsl:value-of select="TDSPCODE" />
      </xsl:element>
      <xsl:element name="RegionCode">
        <xsl:value-of select="REGIONCODE" />
      </xsl:element>
      <xsl:element name="DispatchAssetCode">
        <xsl:value-of select="DISPATCHASSETCODE" />
      </xsl:element>
      <xsl:element name="Status">
        <xsl:value-of select="STATUS" />
      </xsl:element>
      <xsl:element name="Zip">
        <xsl:value-of select="ZIP" />
      </xsl:element>
      <xsl:element name="PGCCode">
        <xsl:value-of select="PGCCODE" />
      </xsl:element>
      <xsl:element name="DispatchType">
        <xsl:value-of select="DISPATCHTYPE" />
      </xsl:element>
    <xsl:if test="REPNAME != ''">  
      <xsl:element name="RepName">
        <xsl:value-of select="REPNAME" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="REPDUNSNUMBER != ''">  
      <xsl:element name="REPDuns">
        <xsl:value-of select="REPDUNSNUMBER" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="TDSPNAME != ''">  
      <xsl:element name="TDSPName">
        <xsl:value-of select="TDSPNAME" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="TDSPDUNSNUMBER != ''">  
      <xsl:element name="TDSPDuns">
        <xsl:value-of select="TDSPDUNSNUMBER" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="MRENAME != ''">  
      <xsl:element name="MREName">
        <xsl:value-of select="MRENAME" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="MREDUNSNUMBER != ''">  
      <xsl:element name="MREDuns">
        <xsl:value-of select="MREDUNSNUMBER" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="PGCNAME != ''">  
      <xsl:element name="PGCName">
        <xsl:value-of select="PGCNAME" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="PGCDUNSNUMBER != ''">  
      <xsl:element name="PGCDuns">
        <xsl:value-of select="PGCDUNSNUMBER" />
      </xsl:element>
    </xsl:if>
    <xsl:if test="ESIID != ''">  
      <xsl:element name="ESIID">
        <xsl:value-of select="ESIID" />
      </xsl:element>
    </xsl:if>
      </ESIIDSERVICEHIST>
    </xsl:for-each>
  </ESIIDSERVICEHIST_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>