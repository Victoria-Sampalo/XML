<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 2</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
            table,th,td{border:1px solid black}
            table{border-collapse: collapse; width:80%; margin:0 auto;
            text-align: center}
            th{background-color: #CCC}

            <!--colores -->
            .rojo{background-color:red}

                 </style>

            </head>
            <body>
                <h1>EJERCICIO 2.</h1>
                <p> Mostrar una tabla con las siguientes columnas:
                    A- Precio del libro, ordenando los resultados por este campo .Nota: se ordenan como si
                    fueran cadenas y no números.
                    B- Título del libro. Se mostrará el fondo de la celda en color rojo si el precio es mayor de
                    100.
                    C-Año de publicación. Se mostrará el texto en cursiva.</p>
                <table>
                    <!--CABECERAS -->
                    <th>Títulos</th>
                    <th>Autores</th>
                    <th>Editores/Afiliación</th>
                    <!-- FOR EACH HASTA LIBRO! POR CADA LIBRO UNA TR CON TD-->
                    <!--4 FILAS 3 COLUMNAS. por cada uno de los libros tr-->
                  
                    <xsl:for-each select="bib/libro">
                        <!--ORDENAR POR precio-->
                        <xsl:sort select="precio" order="ascending" />

                        <!--tr y td de la tabla TR ROW FILA  -  TD COLUMNAS-->
                        <tr>

                            <td> 
                               <xsl:value-of select="precio" /> 
                            </td>
                           <!--choose si ocurre esto, la td con fondo o td sin fondo --> 
                              <xsl:choose>
                                <xsl:when test="precio &gt; 100"> <!-- no es spam, si es spam coge solo las letras y no la casilla-->
                                    <td class="rojo"><xsl:value-of select="titulo"/>

                                    </td>

                                </xsl:when>
                                <xsl:otherwise>
                                   <td> <xsl:value-of select="titulo" /> </td>
                                </xsl:otherwise>

                              </xsl:choose>

                           
                            <td>
                            <em>   <xsl:value-of select="@año"/> </em>

                            </td>


                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>

    </xsl:template>

  


</xsl:stylesheet>