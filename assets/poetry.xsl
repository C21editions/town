<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
               xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
      <html>
        <head>
          <style>
            body {
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              font-size: 1em; /* Set the font size */
              margin: 0;
              padding: 0;
              display: flex;
              justify-content: center; /* Horizontally center the content */
              align-items: center; /* Vertically center the content */
              min-height: 100vh;
              text-align: left;
              color: #454545; /* Set text color */
              background-color: #fff; /* Set background color */
            }
            .container {
              display: flex;
              flex-direction: column;
              align-items: flex-start; /* Aligns the container's content to the start, making it left-aligned */
            }
            .title, .author, .poem {
              margin: 0.5em 0; /* Adds a little space between the title, author, and the poem */
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
          <div class="container">
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
          </div>
        </body>
      </html>
    </xsl:template>
</xsl:transform>
