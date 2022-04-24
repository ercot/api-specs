<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <UIDESIID_UPLOAD_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <UIDESIID_UPLOAD>
        <xsl:element name="UIDESIID">
          <xsl:value-of select="UIDESIID" />
        </xsl:element>
      <xsl:if test="START_TIME != ''">
        <xsl:element name="StartTime">
          <xsl:value-of select="START_TIME" />
        </xsl:element>
      </xsl:if>
      <xsl:if test="STOP_TIME != ''">
        <xsl:element name="StopTime">
          <xsl:value-of select="STOP_TIME" />
        </xsl:element>
      </xsl:if>
      <xsl:if test="TIMESTAMP != ''">
        <xsl:element name="TimeStamp">
          <xsl:value-of select="TIMESTAMP" />
        </xsl:element>
      </xsl:if>
      <xsl:if test="METER_TYPE != ''">
        <xsl:element name="MeterType">
          <xsl:value-of select="METER_TYPE" />
        </xsl:element>
      </xsl:if>
      <xsl:if test="ADDTIME != ''">
        <xsl:element name="AddTime">
          <xsl:value-of select="ADDTIME" />
        </xsl:element>
      </xsl:if>
      </UIDESIID_UPLOAD>
    </xsl:for-each>
  </UIDESIID_UPLOAD_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>