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
      <xsl:element name="UIDChannelCut">		
        <xsl:value-of select="UIDCHANNELCUT" />		
      </xsl:element>					
      <xsl:element name="UIDChannel">			
        <xsl:value-of select="UIDCHANNEL" />		
      </xsl:element>					
      <xsl:element name="Recorder">			
        <xsl:value-of select="RECORDER" />		
      </xsl:element>					
      <xsl:element name="CHANNEL">			
        <xsl:value-of select="CHANNEL" />		
      </xsl:element>					
      <xsl:element name="StartTime">			
        <xsl:value-of select="STARTTIME" />		
      </xsl:element>					
      <xsl:element name="StopTime">			
        <xsl:value-of select="STOPTIME" />		
      </xsl:element>					
      <xsl:element name="SPI">			
        <xsl:value-of select="SPI" />		
      </xsl:element>					
      <xsl:element name="UOMCODE">			
              <xsl:value-of select="UOMCODE" />	
      </xsl:element>					
      <xsl:element name="DSTPARTICIPANT">			
        <xsl:value-of select="DSTPARTICIPANT" />		
      </xsl:element>					
      <xsl:element name="TIMEZONE">			
        <xsl:value-of select="TIMEZONE" />		
      </xsl:element>					
      <xsl:element name="ORIGIN">			
        <xsl:value-of select="ORIGIN" />		
      </xsl:element>					
      <xsl:element name="STARTREADING">			
        <xsl:value-of select="STARTREADING" />		
      </xsl:element>					
      <xsl:element name="STOPREADING">			
        <xsl:value-of select="STOPREADING" />		
      </xsl:element>					
      <xsl:element name="METERMULTIPLIER">			
        <xsl:value-of select="METERMULTIPLIER" />		
      </xsl:element>					
      <xsl:element name="METEROFFSET">			
        <xsl:value-of select="METEROFFSET" />
      </xsl:element>
      <xsl:element name="PULSEMULTIPILER">
        <xsl:value-of select="PULSEOFFSET" />
      </xsl:element>
      <xsl:element name="EDITED">
        <xsl:value-of select="EDITED" />
      </xsl:element>
      <xsl:element name="INTERNALVALIDATION">
        <xsl:value-of select="INTERNALVALIDATION" />
      </xsl:element>
      <xsl:element name="EXTERNALVALIDATION">
        <xsl:value-of select="EXTERNALVALIDATION" />
      </xsl:element>
      <xsl:element name="MERGEFLAG">
        <xsl:value-of select="MERGEFLAG" />
      </xsl:element>
      <xsl:element name="DELETEFLAG">
        <xsl:value-of select="DELETEFLAG" />
      </xsl:element>
      <xsl:element name="VALFLAGE">
        <xsl:value-of select="VALFLAGE" />
      </xsl:element>
      <xsl:element name="VALFLAGI">
        <xsl:value-of select="VALFLAGI" />
      </xsl:element>
      <xsl:element name="VALFLAGO">
        <xsl:value-of select="VALFLAGO" />
      </xsl:element>
      <xsl:element name="VALFLAGN">
        <xsl:value-of select="VALFLAGN" />
      </xsl:element>
      <xsl:element name="TKWRITTENFLAG">
        <xsl:value-of select="TKWRITTENFLAG" />
      </xsl:element>
      <xsl:element name="DCFLOW">
        <xsl:value-of select="DCFLOW" />
      </xsl:element>
      <xsl:element name="ACCEPTREJECTSTATUS">
        <xsl:value-of select="ACCEPTREJECTSTATUS" />
      </xsl:element>
      <xsl:element name="TRANSLATIONTIME">
        <xsl:value-of select="TRANSLATIONTIME" />
      </xsl:element>
      <xsl:element name="DESCRIPTOR">
        <xsl:value-of select="DESCRIPTOR" />
      </xsl:element>
      <xsl:element name="AddTime">
        <xsl:value-of select="ADDTIME" />
      </xsl:element>
      <xsl:element name="INTERVALCOUNT">
        <xsl:value-of select="INTERVALCOUNT" />
      </xsl:element>
      <xsl:element name="CHNLCUTTIMESTAMP">
        <xsl:value-of select="CHNLCUTTIMESTAMP" />
      </xsl:element>
      </LSCHANNELCUTHEADER>
    </xsl:for-each>
  </LSCHANNELCUTHEADER_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>