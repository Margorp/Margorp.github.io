<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h1>Dictionary</h1>
      <table border="1">
        <tr>
          <th>Vocabulary</th>
          <th>Pronunciation</th>
          <th>Type</th>
          <th>Level</th>
          <th>Definition</th>
          <th>Example</th>
        </tr>
        <xsl:for-each select="dictionary/word">
        <tr>
          <td><xsl:value-of select="vocabulary"/></td>
          <td><xsl:value-of select="pronunciation/strong/uk"/></td>
          <td><xsl:value-of select="type"/></td>
          <td><xsl:value-of select="level"/></td>
          <td><xsl:value-of select="definition"/></td>
          <td><xsl:value-of select="example"/></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
