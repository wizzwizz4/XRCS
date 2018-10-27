<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:xrcs="xrcs:xrcs"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:pl="xrcs:pagelist">

  <xsl:template name="pl:canonical">
    <xsl:param name="pagelist"
               select="document(concat($xrcs-url, '/pagelist.xml'))"
    />

    <xsl:variable name="raw-included-fragment">
      <xsl:call-template name="pl:evaluate-includes">
        <xsl:with-param name="pagelist" select="$pagelist" />
      </xsl:call-template>
    </xsl:variable>

    <pl:pagelist>
      <!-- Will eventually do more processing, like deduplication
           and removal of <pl:directory /> -->
      <xsl:copy-of select="node-set($raw-included-fragment)" />
    </pl:pagelist>
  </xsl:template>

  <xsl:template name="pl:evaluate-includes">
    <xsl:param name="pagelist"
               select="document(concat($xrcs-url, '/pagelist.xml'))"
    />
    <xsl:copy-of select="$pagelist/pl:pagelist/pl:index/*" />
    <xsl:copy-of select="$pagelist/pl:pagelist/pl:list/*" />
    <xsl:for-each select="$pagelist/pl:pagelist/include">
      <xsl:call-template name="pl:evaluate-includes">
        <xsl:with-param name="pagelist" select="document(@href)"/>
      </xsl:call-template>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
