<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 3</title>
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
                <h1>EJERCICIO 3.</h1>
                <p> Mostrar una lista enumerada con todos los autores ordenados por apellidos.</p>

                <ol>

                    <xsl:for-each select="bib/libro/autor">

                        <xsl:sort select="apellido" order="ascending" />
                        <li>
                            <xsl:value-of select="nombre" />
                            <xsl:text>, </xsl:text>
                            <xsl:value-of select="apellido" />

                        </li>


                    </xsl:for-each>

                </ol>

            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>