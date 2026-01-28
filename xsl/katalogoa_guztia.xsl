<!-- Transformación XSLT del catálogo completo -->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<!-- BEZaren aldagaia -->
<xsl:variable name="iva" select="1.21"/>

<xsl:template match="/">
<html lang="eu">
<body>

<h1>YAPEROSHOP Produktuen Zerrenda Osoa</h1>

<p>Produktu kopurua:
<xsl:value-of select="count(//produktua)"/>
</p>

<xsl:for-each select="//produktua">
<div class="box">
<h3><xsl:value-of select="izena"/></h3>

<img src="{irudia}" width="200"/>

<p>Prezioa: <xsl:value-of select="prezioa"/> €</p>

<p>BEZarekin:
<xsl:value-of select="prezioa * $iva"/> €
</p>

<p>Deskontua: <xsl:value-of select="@deskontua"/> %</p>

<p>Prezioa deskontuarekin:
<xsl:value-of select="prezioa - (prezioa * @deskontua div 100)"/> €
</p>

<a href="{url}">Informazio gehiago</a>
</div>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
