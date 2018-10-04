<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xrcs="xrcs:xrcs"
                xmlns="http://www.w3.org/1999/xhtml">
    <!--<xsl:import href="config.xsl" />-->
    <xsl:variable name="site-name" select="'XRCS'" />
    <xsl:template match="/">
        <!-- DOCTYPE from
             https://stackoverflow.com/a/22302701/522375 -->
        <xsl:output method="xml"
                    doctype-system="about:legacy-compat" />
        <html>
            <head>
                <title><xsl:value-of select="$site-name" /></title>
            </head>
            <body>
                <h1><xsl:value-of select="/xrcs:page/xrcs:title" /></h1>
                <xsl:copy-of select="/xrcs:page/xrcs:content/*" />
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
