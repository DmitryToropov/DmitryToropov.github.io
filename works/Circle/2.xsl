<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
        <html>
        <head>
            <title>Document</title>
        </head>
        <body>
            <xsl:apply-templates/>
        </body>
        </html>
        </xsl:template>

    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
        <xsl:apply-templates />
      </svg>
    </xsl:template>

    <xsl:template match="эллипс">
      <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
    </xsl:template>
</xsl:stylesheet>
