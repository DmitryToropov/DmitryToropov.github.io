<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
        version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <title>Document</title>
                <script src="https://polyfill.io/v3/polyfill.min.js?features=es6">&#160;</script>
                <script id="MathJax-script" src="https://cdn.jsdelivr.net/npm/mathjax@3.0.1/es5/tex-mml-chtml.js">&#160;</script>
            </head>
            <body id="string">
                <xsl:text disable-output-escaping="yes">$$</xsl:text>
                <xsl:for-each select="строка/операнд">
                    <xsl:value-of select="."/>
                </xsl:for-each>
                <xsl:for-each select="строка">
                    <xsl:value-of select="оператор[1]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">\sqrt{{</xsl:text>
                <xsl:for-each select="строка/корень/строка/дробь/строка/число">
                    <xsl:value-of select="."/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">\over</xsl:text>
                <xsl:text disable-output-escaping="yes"> </xsl:text>
                <xsl:for-each select="строка/корень/строка/дробь/строка/операнд">
                    <xsl:value-of select="."/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">}{</xsl:text>
                <xsl:for-each select="строка/корень/строка/строка/низверх">
                    <xsl:value-of select="строка[1]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">^</xsl:text>
                <xsl:for-each select="строка/корень/строка/строка/низверх">
                    <xsl:value-of select="строка[3]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">_{</xsl:text>
                <xsl:for-each select="строка/корень/строка/строка/низверх">
                    <xsl:value-of select="строка[2]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">}}</xsl:text>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка">
                    <xsl:value-of select="оператор[1]"/>
                </xsl:for-each>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка/низ">
                    <xsl:value-of select="строка[1]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">_</xsl:text>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка/низ">
                    <xsl:value-of select="строка[2]"/>
                </xsl:for-each>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка">
                    <xsl:value-of select="оператор[2]"/>
                </xsl:for-each>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка/операнд">
                    <xsl:value-of select="."/>
                </xsl:for-each>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка">
                    <xsl:value-of select="оператор[3]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">^</xsl:text>
                <xsl:for-each select="строка/корень/строка/строка/строка/верх">
                    <xsl:value-of select="строка[2]"/>
                </xsl:for-each>
                <xsl:text disable-output-escaping="yes">}.$$</xsl:text>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>