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
                    img{width:50px ; height:50px}
                    <!-- colores-->
                    .verde{background-color:green}
                .azul{background-color:blue}
                .rojo{background-color:red}

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
                     <xsl:sort select="articulo" order="ascending" />
 
 
                 
                        <!--CHOOSE DE COLORES -->
                        <xsl:choose>
                             <!--precio menores o iguales que 100  verde -->
                            <xsl:when test="precio &lt;=100">
                                <tr class="verde">
                          <!--LA CLASE EN TD SI  -->
                                <td>
                                    <xsl:value-of select="codigo" /> <!-- VALUE OF SMP CERRADO-->
                                </td>
                                <!-- SPAM COGE SOLO LETRA SIN ESPAM COGE LA CASILLA-->
                                <td>
                                    <xsl:value-of select="articulo" />
                                </td>
                                <td>
                                    <xsl:value-of select="cantidad" />
                                </td>

                                <td>
                                    <xsl:value-of select="precio" />
                                </td>
                                <td> <!-- PONERLE A UN ATRIBUTO VALORES DEL XML
                                img, atribute name=src si fuese web href
                            value of el nombre 
                        OTRA FORMA DE ENLAZAR CON LA CARPETA 
                        <img><xsl:attribute name="src">img/
                                      <xsl:value-of select="imagen"/>
                                    </xsl:attribute>-->
                                    <img><xsl:attribute name="src">
                                      <xsl:value-of select="imagen"/>
                                    </xsl:attribute>
                                </img>
                                </td>

                            </tr>
                        </xsl:when>
                         <xsl:when test="precio &lt; 1000 ">
                             <tr class="azul">
                            <td>
                                <xsl:value-of select="codigo" /> <!-- VALUE OF SMP CERRADO-->
                            </td>

                            <td >
                                <xsl:value-of select="articulo" />
                            </td>
                            <td >
                                <xsl:value-of select="cantidad" />
                            </td>

                            <td >
                                <xsl:value-of select="precio" />
                            </td>
                            <td>
                                <img><xsl:attribute name="src">
                                  <xsl:value-of select="imagen"/>
                                </xsl:attribute>
                            </img>
                            </td>
                        </tr>
                        </xsl:when>


                       
                          <xsl:otherwise>

                          <tr class="rojo">
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
                            <td>
                                <img><xsl:attribute name="src">
                                  <xsl:value-of select="imagen"/>
                                </xsl:attribute>
                            </img>
                            </td>
                        </tr>
                           </xsl:otherwise>
                      </xsl:choose>

                     

                   

                </xsl:for-each>
            </table>

            </body>

        </html>


    </xsl:template>


</xsl:stylesheet>