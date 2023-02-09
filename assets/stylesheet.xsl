<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="sourceDesc">
    <xsl:attribute name="style">display: none;</xsl:attribute>
  </xsl:template>
  <xsl:template match="titleStmt respStmt">
    <xsl:attribute name="style">display: none;</xsl:attribute>
  </xsl:template>
  <xsl:template match="publicationStmt">
    <xsl:attribute name="style">display: none;</xsl:attribute>
  </xsl:template>
  <xsl:template match="encodingDesc">
    <xsl:attribute name="style">display: none;</xsl:attribute>
  </xsl:template>
  <xsl:template match="teiMain">
    <xsl:attribute name="style">
      max-width: 32rem;
      padding-left: 1rem;
      padding-right: 1rem;
      margin-left: auto;
      margin-right: auto;
      display: block;
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="container">
    <xsl:attribute name="style">
      @media (min-width: 56em) {
        max-width: 38rem;
      }
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="teiMain">
    <xsl:attribute name="style">
      font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
      font-size: 1.25em;
      line-height: 1.5;
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="teiHeader titleStmt title">
    <xsl:attribute name="style">
      display: block;
      font-family: sans-serif;
      margin-top: 5rem;
      margin-bottom: 0.5rem;
      font-weight: normal;
      color: #404040;
      letter-spacing: -0.025rem;
      line-height: 1.25;
      text-rendering: optimizeLegibility;
      font-size: 1.4rem;
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="teiHeader titleStmt author">
    <xsl:attribute name="style">
      font-style: italic;
      font-weight: normal;
      letter-spacing: 0;
      margin-top: -0.5rem;
      margin: -0.5rem 0 1.5rem 0;
      font-size: 0.85em;
      display: block;
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="lg">
    <xsl:attribute name="style">