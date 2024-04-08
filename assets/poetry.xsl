<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
      <html>
        <head>
          <style>
            body {
              text-align: center; /* Center text */
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              margin: 0;
              padding: 0;
              display: flex;
              justify-content: center;
              align-items: center;
              min-height: 100vh;
              flex-direction: column;
            }
            .poem {
              width: 60%; /* Adjust as needed */
              margin: auto;
            }
            .line {
              margin: 0.5em 0;
            }
            .line[indented="true"] {
              text-indent: 2em;
            }
            .italic {
              font-style: italic;
            }
          </style>
        </head>
        <body>
          <div class="poem">
            <xsl:apply-templates select="//lg"/>
          </div>
        </body>
      </html>
    </xsl:template>

    <xsl:template match="lg">
      <div>
        <xsl:apply-templates select="l"/>
      </div>
    </xsl:template>

    <xsl:template match="l">
      <div class="line" indented="{@rend='indent'}">
        <xsl:apply-templates/>
      </div>
    </xsl:template>

    <xsl:template match="hi[@type='italic']">
      <span class="italic">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
</xsl:transform>
