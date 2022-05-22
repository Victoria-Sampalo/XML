<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>RELACIÓN 3. EJERCICIO 7</title>
                <meta charset="UTF-8" />
                <style>
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
                    <!-- colores-->
                    .verde{background-color:green}
                .azul{background-color:blue;
                color:red}
                </style>
            </head>
            <body>
                <h1>REL 3-EJER 7</h1>
                <p>Añadir al documento .xml, a cada producto una imagen de referencia 
                 (nombre de un fichero .gif, .jpg, .png, ..). Este fichero debe estar
                  almacenado en una carpeta “Imágenes”
             que estará ubicada en el mismo directorio o carpeta que el fichero XML.  Añadir a la
                    modificación del EJERCICIO 6 una cuarta columna con la imagen añadida. 
                </p>

                <table>
                      <!--CABECERAS -->
                      <th>CÓDIGO</th>
                      <th>ARTÍCULO</th>
                      <th>CANTIDAD</th>
                      <th>PRECIO</th>
                      <th>IMAGEN</th>
                       <!--CONTENIDO TABLAS -->
                    <xsl:for-each select="tienda/producto">
                    <!--ordenar por articulo -->
                    <xsl:sort select="precio" order="ascending" />


                    <tr>
                        <!--CHOOSE DE COLORES -->
                        <xsl:choose>
                            <!--precio menores o iguales que 100  verde -->
                            <xsl:when test="precio &lt;=100">
c

                            </xsl:when>
                            <xsl:when test="precio &lt; 1000">
                                <td class="azul">
                                    <xsl:value-of select="codigo" /> <!-- VALUE OF SMP CERRADO-->
                                </td>

                                <td class="azul">
                                    <xsl:value-of select="articulo" />
                                </td>
                                <td class="azul">
                                    <xsl:value-of select="cantidad" />
                                </td>

                                <td class="azul">
                                    <xsl:value-of select="precio" />
                                </td>


                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="codigo" /> <!-- VALUE OF SMP CERRADO-->
                                </td>

                                <td>
                                    <xsl:value-of select="articulo" />
                                </td>

                                <td>
                                    <xsl:value-of select="cantidad" />
                                </td>

                                <td>
                                    <xsl:value-of select="precio" />
                                </td>

                            </xsl:otherwise>


                            <!--precio mayor 100 y menor MIL color azul texto rojo -->


                        </xsl:choose>

                    </tr>


                </xsl:for-each>

                </table>


            </body>


        </html>


    </xsl:template>


</xsl:stylesheet>