<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" indent="yes" />
 
<xsl:template match="/">
<xsl:for-each select="ROWSET">
  <LSCHANNELCUTDATA_DATA xmlns = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency"
                     xmlns:MDT = "http://www.ercot.com/xsd/2006-06/MarketDataTransparency">
    <xsl:for-each select="ROW">
      <LSCHANNELCUTDATA>
      <xsl:element name="UIDChannelCut">		
        <xsl:value-of select="UIDCHANNELCUT" />		
      </xsl:element>					
      <xsl:element name="AddTime">
        <xsl:value-of select="ADDTIME" />
      </xsl:element>
      <xsl:element name="TradeDate">
        <xsl:value-of select="TRADE_DATE" />
      </xsl:element>
      <xsl:element name="INT001">
        <xsl:value-of select="INT001" />
      </xsl:element>
      <xsl:element name="INT002">
        <xsl:value-of select="INT002" />
      </xsl:element>
      <xsl:element name="INT003">
        <xsl:value-of select="INT003" />
      </xsl:element>
      <xsl:element name="INT004">
        <xsl:value-of select="INT004" />
      </xsl:element>
      <xsl:element name="INT005">
        <xsl:value-of select="INT005" />
      </xsl:element>
      <xsl:element name="INT006">
        <xsl:value-of select="INT006" />
      </xsl:element>
      <xsl:element name="INT007">
        <xsl:value-of select="INT007" />
      </xsl:element>
      <xsl:element name="INT008">
        <xsl:value-of select="INT008" />
      </xsl:element>
      <xsl:element name="INT009">
        <xsl:value-of select="INT009" />
      </xsl:element>
      <xsl:element name="INT010">
        <xsl:value-of select="INT010" />
      </xsl:element>
      <xsl:element name="INT011">
        <xsl:value-of select="INT011" />
      </xsl:element>
      <xsl:element name="INT012">
        <xsl:value-of select="INT012" />
      </xsl:element>
      <xsl:element name="INT013">
        <xsl:value-of select="INT013" />
      </xsl:element>
      <xsl:element name="INT014">
        <xsl:value-of select="INT014" />
      </xsl:element>
      <xsl:element name="INT015">
        <xsl:value-of select="INT015" />
      </xsl:element>
      <xsl:element name="INT016">
        <xsl:value-of select="INT016" />
      </xsl:element>
      <xsl:element name="INT017">
        <xsl:value-of select="INT017" />
      </xsl:element>
      <xsl:element name="INT018">
        <xsl:value-of select="INT018" />
      </xsl:element>
      <xsl:element name="INT019">
        <xsl:value-of select="INT019" />
      </xsl:element>
      <xsl:element name="INT020">
        <xsl:value-of select="INT020" />
      </xsl:element>
      <xsl:element name="INT021">
        <xsl:value-of select="INT021" />
      </xsl:element>
      <xsl:element name="INT022">
        <xsl:value-of select="INT022" />
      </xsl:element>
      <xsl:element name="INT023">
        <xsl:value-of select="INT023" />
      </xsl:element>
      <xsl:element name="INT024">
        <xsl:value-of select="INT024" />
      </xsl:element>
      <xsl:element name="INT025">
        <xsl:value-of select="INT025" />
      </xsl:element>
      <xsl:element name="INT026">
        <xsl:value-of select="INT026" />
      </xsl:element>
      <xsl:element name="INT027">
        <xsl:value-of select="INT027" />
      </xsl:element>
      <xsl:element name="INT028">
        <xsl:value-of select="INT028" />
      </xsl:element>
      <xsl:element name="INT029">
        <xsl:value-of select="INT029" />
      </xsl:element>
      <xsl:element name="INT030">
        <xsl:value-of select="INT030" />
      </xsl:element>
      <xsl:element name="INT031">
        <xsl:value-of select="INT031" />
      </xsl:element>
      <xsl:element name="INT032">
        <xsl:value-of select="INT032" />
      </xsl:element>
      <xsl:element name="INT033">
        <xsl:value-of select="INT033" />
      </xsl:element>
      <xsl:element name="INT034">
        <xsl:value-of select="INT034" />
      </xsl:element>
      <xsl:element name="INT035">
        <xsl:value-of select="INT035" />
      </xsl:element>
      <xsl:element name="INT036">
        <xsl:value-of select="INT036" />
      </xsl:element>
      <xsl:element name="INT037">
        <xsl:value-of select="INT037" />
      </xsl:element>
      <xsl:element name="INT038">
        <xsl:value-of select="INT038" />
      </xsl:element>
      <xsl:element name="INT039">
        <xsl:value-of select="INT039" />
      </xsl:element>
      <xsl:element name="INT040">
        <xsl:value-of select="INT040" />
      </xsl:element>
      <xsl:element name="INT041">
        <xsl:value-of select="INT041" />
      </xsl:element>
      <xsl:element name="INT042">
        <xsl:value-of select="INT042" />
      </xsl:element>
      <xsl:element name="INT043">
        <xsl:value-of select="INT043" />
      </xsl:element>
      <xsl:element name="INT044">
        <xsl:value-of select="INT044" />
      </xsl:element>
      <xsl:element name="INT045">
        <xsl:value-of select="INT045" />
      </xsl:element>
      <xsl:element name="INT046">
        <xsl:value-of select="INT046" />
      </xsl:element>
      <xsl:element name="INT047">
        <xsl:value-of select="INT047" />
      </xsl:element>
      <xsl:element name="INT048">
        <xsl:value-of select="INT048" />
      </xsl:element>
      <xsl:element name="INT049">
        <xsl:value-of select="INT049" />
      </xsl:element>
      <xsl:element name="INT050">
        <xsl:value-of select="INT050" />
      </xsl:element>
      <xsl:element name="INT051">
        <xsl:value-of select="INT051" />
      </xsl:element>
      <xsl:element name="INT052">
        <xsl:value-of select="INT052" />
      </xsl:element>
      <xsl:element name="INT053">
        <xsl:value-of select="INT053" />
      </xsl:element>
      <xsl:element name="INT054">
        <xsl:value-of select="INT054" />
      </xsl:element>
      <xsl:element name="INT055">
        <xsl:value-of select="INT055" />
      </xsl:element>
      <xsl:element name="INT056">
        <xsl:value-of select="INT056" />
      </xsl:element>
      <xsl:element name="INT057">
        <xsl:value-of select="INT057" />
      </xsl:element>
      <xsl:element name="INT058">
        <xsl:value-of select="INT058" />
      </xsl:element>
      <xsl:element name="INT059">
        <xsl:value-of select="INT059" />
      </xsl:element>
      <xsl:element name="INT060">
        <xsl:value-of select="INT060" />
      </xsl:element>
      <xsl:element name="INT061">
        <xsl:value-of select="INT061" />
      </xsl:element>
      <xsl:element name="INT062">
        <xsl:value-of select="INT062" />
      </xsl:element>
      <xsl:element name="INT063">
        <xsl:value-of select="INT063" />
      </xsl:element>
      <xsl:element name="INT064">
        <xsl:value-of select="INT064" />
      </xsl:element>
      <xsl:element name="INT065">
        <xsl:value-of select="INT065" />
      </xsl:element>
      <xsl:element name="INT066">
        <xsl:value-of select="INT066" />
      </xsl:element>
      <xsl:element name="INT067">
        <xsl:value-of select="INT067" />
      </xsl:element>
      <xsl:element name="INT068">
        <xsl:value-of select="INT068" />
      </xsl:element>
      <xsl:element name="INT069">
        <xsl:value-of select="INT069" />
      </xsl:element>
      <xsl:element name="INT070">
        <xsl:value-of select="INT070" />
      </xsl:element>
      <xsl:element name="INT071">
        <xsl:value-of select="INT071" />
      </xsl:element>
      <xsl:element name="INT072">
        <xsl:value-of select="INT072" />
      </xsl:element>
      <xsl:element name="INT073">
        <xsl:value-of select="INT073" />
      </xsl:element>
      <xsl:element name="INT074">
        <xsl:value-of select="INT074" />
      </xsl:element>
      <xsl:element name="INT075">
        <xsl:value-of select="INT075" />
      </xsl:element>
      <xsl:element name="INT076">
        <xsl:value-of select="INT076" />
      </xsl:element>
      <xsl:element name="INT077">
        <xsl:value-of select="INT077" />
      </xsl:element>
      <xsl:element name="INT078">
        <xsl:value-of select="INT078" />
      </xsl:element>
      <xsl:element name="INT079">
        <xsl:value-of select="INT079" />
      </xsl:element>
      <xsl:element name="INT080">
        <xsl:value-of select="INT010" />
      </xsl:element>
      <xsl:element name="INT081">
        <xsl:value-of select="INT081" />
      </xsl:element>
      <xsl:element name="INT082">
        <xsl:value-of select="INT082" />
      </xsl:element>
      <xsl:element name="INT083">
        <xsl:value-of select="INT083" />
      </xsl:element>
      <xsl:element name="INT084">
        <xsl:value-of select="INT084" />
      </xsl:element>
      <xsl:element name="INT085">
        <xsl:value-of select="INT085" />
      </xsl:element>
      <xsl:element name="INT086">
        <xsl:value-of select="INT086" />
      </xsl:element>
      <xsl:element name="INT087">
        <xsl:value-of select="INT087" />
      </xsl:element>
      <xsl:element name="INT088">
        <xsl:value-of select="INT088" />
      </xsl:element>
      <xsl:element name="INT089">
        <xsl:value-of select="INT089" />
      </xsl:element>
      <xsl:element name="INT090">
        <xsl:value-of select="INT010" />
      </xsl:element>
      <xsl:element name="INT091">
        <xsl:value-of select="INT091" />
      </xsl:element>
      <xsl:element name="INT092">
        <xsl:value-of select="INT092" />
      </xsl:element>
      <xsl:element name="INT093">
        <xsl:value-of select="INT093" />
      </xsl:element>
      <xsl:element name="INT094">
        <xsl:value-of select="INT094" />
      </xsl:element>
      <xsl:element name="INT095">
        <xsl:value-of select="INT095" />
      </xsl:element>
      <xsl:element name="INT096">
        <xsl:value-of select="INT096" />
      </xsl:element>
      <xsl:element name="INT097">
        <xsl:value-of select="INT097" />
      </xsl:element>
      <xsl:element name="INT098">
        <xsl:value-of select="INT098" />
      </xsl:element>
      <xsl:element name="INT099">
        <xsl:value-of select="INT099" />
      </xsl:element>
      <xsl:element name="INT100">
        <xsl:value-of select="INT100" />
      </xsl:element>
      </LSCHANNELCUTDATA>
    </xsl:for-each>
  </LSCHANNELCUTDATA_DATA>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>