<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">
<html lang="eu">
<body>

<h1>YAPEROSHOP Katalogoa Kategoriaka</h1>

<xsl:for-each select="katalogoa/kategoria">
<h2><xsl:value-of select="@izena"/></h2>
<ul>
<xsl:for-each select="produktua">
<li>
<strong><xsl:value-of select="izena"/></strong> -
<xsl:value-of select="prezioa"/> €

<img src="{irudia}" width="100"/>

<xsl:choose>
<xsl:when test="@deskontua &gt; 0">
 (Deskontua badu)
</xsl:when>
<xsl:otherwise>
 (Deskonturik ez)
</xsl:otherwise>
</xsl:choose>
</li>
</xsl:for-each>
</ul>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
