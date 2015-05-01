<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/rss/channel">
<html>
<body>
<p><xsl:value-of select="title"/></p>
<xsl:apply-templates select="item"/>
</body>
</html>
</xsl:template>

<xsl:template match="item">
<xsl:apply-templates select="title"/>
<xsl:apply-templates select="description"/>
<xsl:apply-templates select="guid"/>
</xsl:template>

<xsl:template match="title">
<p><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="description">
<p><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="guid">
<p><xsl:value-of select="."/></p>
</xsl:template>

</xsl:stylesheet>
