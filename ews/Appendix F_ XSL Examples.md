# Appendix F: XSL Examples

The purpose of this appendix is to provide XSL examples related to the
processing and transformation of the XML described in this
specification. One example of XSL usage would be to convert UTC time
into separate date and hour values based on the local time zone. For
example, given the following XML:

`<startTime>2007-12-17T06:00:00Z</startTime>`

An XSL template can be used to generate tags that are desired by a
consumer of the message such as the following where the hour is an hour
ending in local time:

~~~
<startTime>2007-12-17T06:00:00Z</startTime>
<startDate>2007-12-17</startDate>
<startHour>1</startHour>
~~~

The following XSL example is implemented using custom functions within
TIBCO BusinessWorks.

~~~
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msg="http://www.uisol.com" xmlns:tib="http://www.tibco.com/bw/xslt/custom-functions"
    exclude-result-prefixes="msg tib">

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="*">
        <xsl:choose>
            <xsl:when test="name() = 'msg:startTime'">
                <xsl:copy>
                    <xsl:apply-templates/>
                </xsl:copy>
                <xsl:variable name="vStartTime">
                    <xsl:value-of
                        select="tib:translate-timezone(text(), 
                        tib:get-timezone-from-dateTime(current-dateTime()))"
                    />
                </xsl:variable>
                <msg:startDate>
                    <xsl:value-of select="substring($vStartTime,1,10)"/>
                </msg:startDate>
                <msg:startTime>
                    <xsl:choose>
                        <xsl:when test="substring($vStartTime,12,2) = '00'">24</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="format-number(substring($vStartTime,12,2),'#0')"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </msg:startTime>
            </xsl:when>
            <xsl:when test="name() = 'msg:endTime'">
                <xsl:copy>
                    <xsl:apply-templates/>
                </xsl:copy>
                <xsl:variable name="vEndTime">
                    <xsl:value-of
                        select="tib:translate-timezone(text(), 
                        tib:get-timezone-from-dateTime(current-dateTime()))"
                    />
                </xsl:variable>
                <msg:endDate>
                    <xsl:value-of select="substring($vEndTime,1,10)"/>
                </msg:endDate>
                <msg:endTime>
                    <xsl:choose>
                        <xsl:when test="substring($vEndTime,12,2) = '00'">24</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="format-number(substring($vEndTime,12,2),'#0')"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </msg:endTime>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy>
                    <xsl:apply-templates/>
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
~~~

The following XSL example is implemented using Xalan:

~~~
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msg="http://www.uisol.com" xmlns:lxslt="http://xml.apache.org/xslt" xmlns:mk="ext1"
    extension-element-prefixes="mk" exclude-result-prefixes="msg lxslt">

    <lxslt:component prefix="mk" functions="ConvertDate">
        <lxslt:script lang="javascript"> function ConvertDate(inYear,inMonth,inDay,inTime,inType){
            var strDate = inMonth + "/" + inDay + "/" + inYear + " " + inTime + " UTC"; var GMTDate
            = new Date(strDate); strDate = inType == "Date" ? GMTDate.getFullYear() + "-" +
            GMTDate.getMonth() + "-" + GMTDate.getDate() : GMTDate.getHours(); return
            strDate.toString(); } </lxslt:script>
    </lxslt:component>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="*">
        <xsl:choose>
            <xsl:when test="(name() = 'msg:startTime' or name() = 'msg:endTime')">
                <xsl:copy>
                    <xsl:apply-templates/>
                </xsl:copy>

                <xsl:variable name="vYear">
                    <xsl:value-of select="substring(text(),1,4)"/>
                </xsl:variable>
                <xsl:variable name="vMonth">
                    <xsl:value-of select="substring(text(),6,2)"/>
                </xsl:variable>
                <xsl:variable name="vDay">
                    <xsl:value-of select="substring(text(),9,2)"/>
                </xsl:variable>
                <xsl:variable name="vTime">
                    <xsl:value-of select="substring(text(),12,8)"/>
                </xsl:variable>

                <xsl:choose>
                    <xsl:when test="name() = 'msg:startTime'">
                        <msg:startDate>
                            <xsl:value-of
                                select="mk:ConvertDate(string($vYear),string($vMonth),string($vDay),string($vTime),'Date')"
                            />
                        </msg:startDate>
                        <msg:startTime>
                            <xsl:value-of
                                select="mk:ConvertDate(string($vYear),string($vMonth),string($vDay),string($vTime),'Time')"
                            />
                        </msg:startTime>
                    </xsl:when>
                    <xsl:when test="name() = 'msg:endTime'">
                        <msg:endDate>
                            <xsl:value-of
                                select="mk:ConvertDate(string($vYear),string($vMonth),string($vDay),string($vTime),'Date')"
                            />
                        </msg:endDate>
                        <msg:endTime>
                            <xsl:value-of
                                select="mk:ConvertDate(string($vYear),string($vMonth),string($vDay),string($vTime),'Time')"
                            />
                        </msg:endTime>
                    </xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy>
                    <xsl:apply-templates/>
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
~~~
