<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 5</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
            

            
                 </style>

            </head>
            <body>
                <h1>EJERCICIO 5.</h1>
                <p>.Mostrar una lista con los autores españoles.</p>
               
                <ul>
                    <xsl:for-each select="catalogo/artistas/artista">
                    <xsl:if test="nacionalidad = 'España' ">
                        <li>
                            <xsl:value-of select="nombre" />
                        </li>

                    </xsl:if>


                    </xsl:for-each>


                </ul>
        


            </body>


        </html>

    </xsl:template>

  


</xsl:stylesheet>