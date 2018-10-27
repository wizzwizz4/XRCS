<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="exsl msxsl">
  <!-- exsl:node-set -->
  <msxsl:script language="JScript" implements-prefix="exsl"><![CDATA[
    this['node-set'] = function (x) {
      return x;
    }
  ]]></msxsl:script>
</xsl:stylesheet>
