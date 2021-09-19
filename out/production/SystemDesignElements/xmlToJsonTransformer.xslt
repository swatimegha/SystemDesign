<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version='3.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:output method='json'/>
    <xsl:variable name='example2' select='/University/Student/firstname'/>
    <xsl:template match='/'>
        {{ "Student":
        <xsl:text> [</xsl:text>
        <xsl:for-each select='$example2'>
            <xsl:sort select='.' />
            "<xsl:value-of select='.' />"
            <xsl:if test='position() != last()'>,\n </xsl:if>
        </xsl:for-each>
        <xsl:text>]\n}}</xsl:text>
    </xsl:template>
</xsl:stylesheet>