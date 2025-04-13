<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />

  <!-- Empieza la transformación desde el nodo raíz 'colleccio' -->
  <xsl:template match="colleccio">
    <html lang="ca">
      <head>
        <meta charset="UTF-8"/>
        <title>Videoteca Completa</title>
        <style>
          body { font-family: Arial, sans-serif; background: #111; color: white; padding: 20px; }
          table { border-collapse: collapse; width: 100%; margin-bottom: 40px; background: #222; }
          th, td { border: 1px solid #555; padding: 10px; text-align: left; }
          th { background-color: #333; }
          h2 { margin-top: 60px; color: #ffcc00; }
        </style>
      </head>
      <body>
        <h1>Catàleg complet de pel·lícules</h1>

        <!-- Recorre cada pel·lícula i crea una taula -->
        <xsl:for-each select="pelicula">
          <h2><xsl:value-of select="titol" /></h2>
          <table>
            <tr><th>Codi</th><td><xsl:value-of select="@codi" /></td></tr>
            <tr><th>Durada</th><td><xsl:value-of select="durada" /> <xsl:value-of select="durada/@temps" /></td></tr>
            <tr><th>Any</th><td><xsl:value-of select="any" /></td></tr>
            <tr><th>Nacionalitat</th><td><xsl:value-of select="nacionalitat" /></td></tr>
            <tr><th>Idioma</th><td><xsl:value-of select="idioma" /></td></tr>
            <tr><th>Gènere</th><td><xsl:value-of select="genere" /></td></tr>
            <tr><th>Classificació</th><td><xsl:value-of select="class" /></td></tr>
            <tr><th>Director/a</th><td><xsl:value-of select="director-a" /></td></tr>
            <tr>
              <th>Actors</th>
              <td>
                <xsl:for-each select="repartiment/actor">
                  <xsl:value-of select="nom" /> <xsl:value-of select="cognom" /> (<xsl:value-of select="tipus" />)<br/>
                </xsl:for-each>
              </td>
            </tr>
            <tr><th>Sinopsi</th><td><xsl:value-of select="sinopsi" /></td></tr>
            <tr><th>Suport</th><td><xsl:value-of select="suport" /></td></tr>
            <tr><th>Data de compra</th><td><xsl:value-of select="datacompra" /></td></tr>
            <tr><th>Preu</th><td><xsl:value-of select="preu" /> <xsl:value-of select="preu/@moneda" /></td></tr>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
