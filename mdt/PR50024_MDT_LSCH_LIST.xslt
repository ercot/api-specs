<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />
 
<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <LSCHANNELCUTHEADER_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <LSCHANNELCUTHEADER>
      <xsl:element name="ESIID">		
        <xsl:value-of select="ESIID" />		
      </xsl:element>					
      <xsl:element name="TransactionId">
        <xsl:value-of select="TRANSACTIONID" />
      </xsl:element>
      <xsl:element name="StartTime">			
        <xsl:value-of select="STARTTIME" />		
      </xsl:element>					
      <xsl:element name="StopTime">			
        <xsl:value-of select="STOPTIME" />		
      </xsl:element>					
      </LSCHANNELCUTHEADER>
    </xsl:for-each>
  </LSCHANNELCUTHEADER_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>