<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 1</title>
                <meta charset="UTF-8" />
                <style>
            table,th,td{border:1px solid black}
            table{border-collapse: collapse}

        </style>

            </head>
            <body>
                <h1>EJERCICIO 1.</h1>
                <p>Tabla ordenada por título del libro</p>
                <table>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Editor</th>

                    <xsl:for-each select="bib/libro">
                        <!--ORDENAR POR NOMBRE-->
                        <xsl:sort select="titulo" order="ascending" />

                        <!--tr y td de la tabla
                        TR ROW FILA     TD COLUMNAS-->
                        <tr>

                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="autor" />
                            </td>
                            <td>
                                <xsl:value-of select="editorial" />
                            </td>


                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>

    </xsl:template>

    <xsl:template match="ciclo">
        <xsl:value-of select="nombre" />


        <xsl:apply-templates />


    </xsl:template>


</xsl:stylesheet>