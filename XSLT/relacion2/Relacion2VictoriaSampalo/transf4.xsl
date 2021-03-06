<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 4</title>
                <meta charset="UTF-8" />
                <style>
                    <!--PONER BORDE Y ESTILO A LA TABLA -->
                    table,th,td{border:1px solid black}
            table{border-collapse: collapse; width:80%; margin:0 auto;
            text-align: center}
            th{background-color: #CCC}
                    <!--colores -->
                    .rojo{background-color:red}
                </style>

            </head>
            <body>
                <h1>EJERCICIO 4.</h1>
                <p>Mostrar una lista enumerada con todos los títulos de libros cuyo precio sea menor de 100. </p>

                <ol>

                    <xsl:for-each select="bib/libro">
                        <xsl:if test="precio &lt; 100">
                            <li>
                                <xsl:value-of select="titulo" />
                            </li>
                        </xsl:if>
                    </xsl:for-each>

                </ol>

            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>