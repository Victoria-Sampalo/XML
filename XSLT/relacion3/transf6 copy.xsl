<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>RELACIÓN 3. EJERCICIO 6</title>
                <meta charset="UTF-8" />
                <style>
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
                    <!-- colores-->
                    .verde{background-color:green}
                .azul{background-color:blue}
                .rojo{background-color:red}
                </style>
            </head>
            <body>
                <h1>REL 3-EJER 6</h1>
                <p>
                    Añadir al documento .xml dos productos nuevos. Sus precios serán 100 € y 350 €
            respectivamente. Modificar el apartado 5, añadiendo las siguientes modificaciones:
                    <br />
                    - Los artículos con precio menores o iguales que 100 € aparezcan en color verde, los
             artículos con precios mayor que 100 € y menor que 1000 € de color azul y el resto rojo.
                    <br />
                    -Los productos aparecerán ordenados por el artículo.
                </p>

                <table>
                    <!--CABECERAS -->
                    <th>CÓDIGO</th>
                    <th>ARTÍCULO</th>
                    <th>CANTIDAD</th>
                    <th>PRECIO</th>
                    
                     <!--CONTENIDO TABLAS -->
                  <xsl:for-each select="tienda/producto">
                  <!--ordenar por articulo -->
                  <xsl:sort select="articulo" order="ascending" />

                 
                <tr><!--DIFERENCIA CON EL OTRO EJERCICIO, ESTA MEJOR CON EL TRANSF6 
                COMO CASAN LOS TR -->

               
                     <!--CHOOSE DE COLORES -->
                     <xsl:choose>
                          <!--precio menores o iguales que 100  verde -->
                         <xsl:when test="precio &lt;=100">

                            
                             <td class="verde">
                                 <xsl:value-of select="codigo" /> <!-- VALUE OF SMP CERRADO-->
                             </td>
                             <!-- SPAM COGE SOLO LETRA SIN ESPAM COGE LA CASILLA-->
                             <td class="verde">
                                 <xsl:value-of select="articulo" />
                             </td>
                             <td class="verde">
                                 <xsl:value-of select="cantidad" />
                             </td>

                             <td class="verde">
                                 <xsl:value-of select="precio" />
                             </td>
                            
                     </xsl:when>
                      <xsl:when test="precio &lt; 1000 ">
                        
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
                         <td class="rojo">
                             <xsl:value-of select="codigo" /> <!-- VALUE OF SMP CERRADO-->
                         </td>

                         <td class="rojo">
                             <xsl:value-of select="articulo" />
                         </td>

                         <td class="rojo">
                             <xsl:value-of select="cantidad" />
                         </td>

                         <td class="rojo">
                             <xsl:value-of select="precio" />
                         </td>
                        </xsl:otherwise>
                   </xsl:choose>

                </tr>

             </xsl:for-each>
         </table>



            </body>


        </html>


    </xsl:template>


</xsl:stylesheet>