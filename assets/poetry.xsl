<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
               xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
      <html>
        <head><title>Test Transformation</title></head>
        <body>
          <p>This is a test. If you can see this, the basic transformation is working.</p>
          <p>Title: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></p>
        </body>
      </html>
    </xsl:template>
    
</xsl:transform>
