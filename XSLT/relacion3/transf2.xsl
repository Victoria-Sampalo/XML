<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                <title>Relacion 3. ejercicio 2</title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <h1>Relacion 3. ejercicio 2</h1>
                <p>Formatear la lista de artículos para que se presente como una 
                    lista no ordenada(sin numerar), de HTML.</p>

                    <ul> <!--ul NO ENUMERADA -->
                <xsl:for-each select="tienda/producto">

                <li>
                    <xsl:value-of select="articulo" />
                </li>

               

                </xsl:for-each>

            </ul>

               
            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>