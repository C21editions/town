<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
               xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
      <html>
        <head>
          <style>
            * {
              -webkit-box-sizing: border-box;
              -moz-box-sizing: border-box;
              box-sizing: border-box;
            }

            html, body {
              margin: 0;
              padding: 0;
              overflow-x: hidden;
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              color: #454545;
              background-color: #fff;
            }

            html {
              font-size: 1em;
              line-height: 1.5;
            }

            @media (min-width: 38em) {
              html {
                font-size: 1.25em;
              }
            }

            body {
              -webkit-text-size-adjust: 100%;
              -ms-text-size-adjust: 100%;
            }

            a, .text-title a {
              color: #1D4DC6;
              text-decoration: none;
            }

            a:hover, a:focus {
              text-decoration: underline;
            }

            h1, h2, h3, h4, h5, h6 {
              font-family: sans-serif;
              margin-bottom: 0.5rem;
              font-weight: normal;
              color: #404040;
              letter-spacing: -0.025rem;
              line-height: 1.25;
              text-rendering: optimizeLegibility;
            }

            h1 { font-size: 1.4rem; }
            h2 { font-size: 1.2rem; }
            h3, h4, h5, h6 { font-size: 1rem; }

            p {
              margin-top: 0;
              margin-bottom: 1rem;
            }

            ul, ol {
              list-style: none;
            }

            .poem, .masthead, .container, .wrap, .content, .row, .column, teiMain, ref {
              max-width: 32rem;
              padding-left: 1rem;
              padding-right: 1rem;
              margin-left: auto;
              margin-right: auto;
              position: relative;
              display: block;
            }

            @media (min-width: 56em) {
              .container, .poem, .masthead, .wrap, .content, .row, .column, teiMain, ref {
                max-width: 38rem;
              }
            }

            .line, l, lg, dedication, note, teiHeader titleStmt title, teiHeader titleStmt author {
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              line-height: 1.5;
              display: block;
              text-align: center;
              margin: auto;
            }

            .italic, hi[type='italic'] {
              font-style: italic;
            }

            .masthead-title {
              color: #505050;
              font-size: 1.8rem;
              line-height: 0.777em;
              margin-top: 2em;
              margin-bottom: 0;
              text-align: center;
            }

            .masthead-title small {
              color: #454545;
              font-family: sans-serif;
              font-size: 0.88rem;
              font-weight: normal;
              letter-spacing: 0.05rem;
              display: none;
            }

            @media (min-width: 48em) {
              .masthead-title small {
                display: inline;
              }
            }

            .line[indented="true"], l[rend="indent"] {
              text-indent: 2em;
            }

            sourceDesc, titleStmt respStmt, publicationStmt, encodingDesc {
              display: none;
            }
          </style>
        </head>
        <body>
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