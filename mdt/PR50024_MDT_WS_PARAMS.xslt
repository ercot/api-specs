<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <PARAMETER_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <PARAMETER>
        <xsl:element name="AuditId">
          <xsl:value-of select="AUDIT_ID" />
        </xsl:element>
        <xsl:element name="MPIDSubmit">
          <xsl:value-of select="MPID_SUBMIT" />
        </xsl:element>
        <xsl:element name="ParameterName">
          <xsl:value-of select="PARAMETER_NAME" />
        </xsl:element>
      <xsl:if test="PARAMETER_OPERATOR != ''">
        <xsl:element name="ParameterOperator">
          <xsl:value-of select="PARAMETER_OPERATOR" />
        </xsl:element>
      </xsl:if>
      <xsl:if test="PARAMETER_VALUE != ''">
        <xsl:element name="ParameterValue">
          <xsl:value-of select="PARAMETER_VALUE" />
        </xsl:element>
      </xsl:if>
      </PARAMETER>
    </xsl:for-each>
  </PARAMETER_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>