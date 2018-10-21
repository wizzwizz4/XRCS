<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xrcs="xrcs:xrcs"
                xmlns="http://www.w3.org/1999/xhtml">
  <xsl:import href="config.xsl" />

  <!-- DOCTYPE from
       https://stackoverflow.com/a/22302701/522375 -->
  <xsl:output method="xml"
              doctype-system="about:legacy-compat" />
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:value-of select="/xrcs:page/xrcs:title" />
          &#8212;
          <xsl:value-of select="$site-name" />
        </title>
        <link rel="stylesheet" href="{$xrcs-url}/css/general.css" />
      </head>
      <body>
        <a href="#content">skip to main content</a>
        <main id="content" role="main">
          <h1><xsl:value-of select="/xrcs:page/xrcs:title" /></h1>
          <xsl:copy-of select="/xrcs:page/xrcs:content/*" />
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
