<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h1>Dictionary</h1>
      <table border="1">
        <tr>
          <th>Vocab</th>
          <th>UK(s)</th>
          <th>UK(w)</th>
          <th>US(s)</th>
          <th>US(w)</th>
          <th>Type</th>
          <th>Lv</th>
          <th>Def</th>
          <th>Eg</th>
        </tr>
        <xsl:for-each select="dictionary/word">
        <tr>
          <td><xsl:value-of select="vocabulary"/></td>
          <td><xsl:value-of select="pronunciation/strong/uk"/></td>
          <td><xsl:value-of select="pronunciation/weak/uk"/></td>
          <td><xsl:value-of select="pronunciation/strong/us"/></td>
          <td><xsl:value-of select="pronunciation/weak/us"/></td>
          <td><xsl:value-of select="type"/></td>
          <td><xsl:value-of select="level"/></td>
          <td><xsl:value-of select="definition"/></td>
          <td>
            <table>
              <xsl:for-each select="dictionary/word">
              <tr>
                <td><xsl:value-of select="example"/></td>
              </tr>
            </table>
          </td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
