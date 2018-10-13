<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xrcs="xrcs:xrcs"
                xmlns="http://www.w3.org/1999/xhtml">
  <!-- Extensions -->
  <xsl:import href="extensions/sidebar.xsl" />
  <xsl:import href="extensions/core.xsl" />
  <xsl:import href="extensions/include.xsl" />
  <xsl:import href="extensions/citations.xsl" />

  <!-- Global variables -->
  <xsl:variable name="site-name" select="'XRCS'" />
  <xsl:variable name="xrcs-url" select="'/XRCS/xrcs'" />
</xsl:stylesheet>
