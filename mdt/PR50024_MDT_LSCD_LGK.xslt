<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />
 
<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <LSCD_LGK_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <LSCD_LGK>
      <xsl:element name="UIDCHANNELCUT">		
        <xsl:value-of select="UIDChannelCut" />		
      </xsl:element>					
      <xsl:element name="AddTime">			
        <xsl:value-of select="ADDTIME" />		
      </xsl:element>					
      </LSCD_LGK>
    </xsl:for-each>
  </LSCD_LGK_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>