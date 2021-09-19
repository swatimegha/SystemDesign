<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xls="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"></xsl:output>
    <xsl:template match="/">
        <employees>
            <xsl:for-each select="University/Student">
                <employee>
                    <xls:attribute name="empid">
                        <xsl:value-of select="@id"/>
                    </xls:attribute>

                    <empFirstName>
                        <xsl:value-of select="firstname"/>
                    </empFirstName>
                    <joiningDate>
                        <xsl:value-of select="admissiondate"/>
                    </joiningDate>
                </employee>
            </xsl:for-each>
        </employees>

    </xsl:template>


</xsl:stylesheet>