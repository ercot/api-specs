<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />

<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <UIDCHANNELCUT_UPLOAD_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <UIDCHANNELCUT_UPLOAD>
        <xsl:element name="UIDCHANNELCUT">
          <xsl:value-of select="UIDCHANNELCUT" />
        </xsl:element>
      <xsl:if test="ADDTIME != ''">
        <xsl:element name="AddTime">
          <xsl:value-of select="ADDTIME" />
        </xsl:element>
      </xsl:if>
      </UIDCHANNELCUT_UPLOAD>
    </xsl:for-each>
  </UIDCHANNELCUT_UPLOAD_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>