<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
               xmlns:tei="http://www.tei-c.org/ns/1.0">
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
            .title, .author {
              margin-top: 1em;
            }
          </style>
        </head>
        <body>
          <div class="title">
            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
          </div>
          <div class="author">
            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/>
          </div>
          <div class="poem">
            <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:lg">
              <div>
                <xsl:for-each select="tei:l">
                  <div class="line" indented="{@rend='indent'}">
                    <xsl:if test="tei:hi[@type='italic']">
                      <span class="italic">
                        <xsl:value-of select="."/>
                      </span>
                    </xsl:if>
                    <xsl:if test="not(tei:hi[@type='italic'])">
                      <xsl:value-of select="."/>
                    </xsl:if>
                  </div>
                </xsl:for-each>
              </div>
            </xsl:for-each>
          </div>
        </body>
      </html>
    </xsl:template>
</xsl:transform>
