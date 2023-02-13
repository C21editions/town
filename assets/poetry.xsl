<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
      <hmtl>
        <head>
          <style>
            * {
              -webkit-box-sizing: border-box;
              -moz-box-sizing: border-box;
              box-sizing: border-box;
            }

            html,
            body {
              margin: 0;
              padding: 0;
              overflow-x: hidden;
            }

            html {
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              font-size: 1em;
              line-height: 1.5;
            }

            @media (min-width: 38em) {
              html {
                font-size: 1.25em;
              }
            }

            body {
              color: #454545;
              background-color: #fff;
              -webkit-text-size-adjust: 100%;
              -ms-text-size-adjust: 100%;
            }

            .content {
              margin-bottom: 4rem;
            }

            .wrap {
              position: relative;
              width: 100%;
            }

            .container {
              max-width: 32rem;
              padding-left: 1rem;
              padding-right: 1rem;
              margin-left: auto;
              margin-right: auto;
            }

            @media (min-width: 56em) {
              .container {
                max-width: 38rem;
              }
            }

            a,
            .text-title a {
              color: #1D4DC6;
              text-decoration: none;
            }

            a:hover,
            a:focus {
              text-decoration: underline;
            }

            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
              font-family: sans-serif;
              margin-bottom: 0.5rem;
              font-weight: normal;
              color: #404040;
              letter-spacing: -0.025rem;
              line-height: 1.25;
              text-rendering: optimizeLegibility;
            }

            h1,
            h1.text-title {
              font-size: 1.4rem;
            }

            h2 {
              margin-top: 1rem;
              font-size: 1.2rem;
            }

            h3,
            h4,
            h5,
            h6 {
              margin-top: 1rem;
              font-size: 1rem;
            }

            h3 {
              margin-top: 1.5rem;
            }

            p {
              margin-top: 0;
              margin-bottom: 1rem;
            }

            ul, ol {
              list-style: none;
            }

            hr {
              position: relative;
              margin: 1.5rem 0;
              border: 0;
              border-top: 1px solid #eee;
              border-bottom: 1px solid #fff;
            }

            .masthead {
              border-bottom: 1px solid #eee;
              margin-bottom: 3rem;
              padding-top: 26px;
              padding-bottom: 1rem;
              text-align: center;
            }

            .masthead-title {
              color: #505050;
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              font-size: 1.8rem;
              line-height: 0.777em;
              margin-top: 2em;
              margin-bottom: 0;
              margin-right: 0;
              margin-left: 0;
              text-align: center;
            }

            .masthead-title small {
              color: #454545;
              display: none;
              font-family: sans-serif;
              font-size: 0.88rem;
              font-weight: normal;
              letter-spacing: 0.05rem;
            }

            @media (min-width: 320px) {
              .masthead-title {
                margin-top: 2px;
                margin-right: 15%;
                margin-left: 15%;
              }
            }

            @media (min-width: 48em) {
              .masthead-title small {
                display: inline;
              }
            }

            .row {
              display: flex;
            }

            .column {
              flex: 50%;
            }

            /* CSS FOR TEI-CONFORMING XML PAGES */


            sourceDesc {
              display: none;
            }

            titleStmt respStmt {
              display: none;
            }

            publicationStmt {
              display: none;
            }

            encodingDesc {
              display: none;
            }

            teiMain {
              max-width: 32rem;
              padding-left: 1rem;
              padding-right: 1rem;
              margin-left: auto;
              margin-right: auto;
              display: block;
            }

            @media (min-width: 56em) {
              container {
                max-width: 38rem;
              }
            }

            teiMain, TEI {
              font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
              font-size: 1.25em;
              line-height: 1.5;
            }

            teiHeader titleStmt title {
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
            }

            teiHeader titleStmt author {
              font-style: italic;
              font-weight: normal;
              letter-spacing: 0;
              margin-top: -0.5rem;
              margin: -0.5rem 0 1.5rem 0;
              font-size: 0.85em;
              display: block;
            }

            lg {
              display: block;
              font-size: 0.8em;
              line-height: 1.25;
              margin: 0px 0px 20px 0px;
            }

            l {
              display: block;
            }

            l[rend=indent] {
              text-indent: 10.5em;
            }

            hi[type=italic] {
              font-style: italic;
            }

            dedication {
              font-style: italic;
            }

            ref {
                max-width: 32rem;
                padding-left: 1rem;
                padding-right: 1rem;
                margin-left: auto;
                margin-right: auto;
                display: block;  
            }
            note {
              font-size: 0.5em;
            }
          </style>
          <title></title>
        </head>
        <xsl:apply-templates/>
      </hmtl>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:transform>

