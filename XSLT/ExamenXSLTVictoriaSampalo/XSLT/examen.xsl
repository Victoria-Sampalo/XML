<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>
            <head>

                <title>XSLT examen</title>
                <meta charset="UTF-8"/>
                <style>
                td img{height: 100px}
                .esp{padding-left:50px}

                .paises{font-size: 20px}

                </style>


            </head>
            <body>

                <h1>Información de los Continentes </h1>
                <!--LISTA ORDEN -->
                <ol>
                    <xsl:for-each select="geografia/continentes/continente">

                    <xsl:sort select="." order="ascending"/>

                    <li>
                        <xsl:value-of select="@nombre"/>

                        <ul>
                            <xsl:for-each select="pais">
                                <xsl:sort select="." order="descending" />

                                <li><h2>
                                    <a><xsl:attribute name="href">
                                            #<xsl:value-of select="." />

                                        </xsl:attribute>
                                        <xsl:value-of select="." />
                                        <br />

                                    </a>
                                </h2>
                                </li>
                            </xsl:for-each>
                        </ul>



                    </li>




                    </xsl:for-each>

                </ol>

                <!--LISTA 2 -->

                <h1>Información de los Paises</h1>
                <ol>
                    <xsl:for-each select="geografia/paises/pais">

                    <xsl:sort select="@nombre" order="ascending"/>

                    <li class="paises"><b>
                        <xsl:value-of select="@nombre"/>
                        </b>
                        <h2>
                            <xsl:attribute name="id">
                                <xsl:value-of select="@nombre"/>
                            </xsl:attribute>
                        
                        </h2>
                    
                      
                    
                    </li>
                    <!--DENTRO DE CADA LI ES UNA TABLA  -->
                    <table> 

                        <!--tr filas td columnas th cabecera -->


                        <tr>
                            <td>

                                <p>
                                    <strong>Sistema de Gobierno: </strong>
                                    <xsl:value-of select="sistema"/>
                                </p>
                                <p>
                                    <strong>Superficie: </strong>
                                    <xsl:value-of select="superficie"/>
                                    m²
                                </p>
                                <p>
                                    <strong>Idioma: </strong>
                                    <xsl:value-of select="idioma"/>
                                </p>
                                <p>
                                    <strong>Modena: </strong>
                                    <xsl:value-of select="moneda"/>
                                </p>

                                <xsl:for-each select="moneda">
                                <!--si tene valor antigua -->
                                <xsl:if test="@antigua!= ''">
                                    <p>
                                        <strong>Modena Antigua: </strong>
                                        <xsl:value-of select="."/>

                                    </p>


                                    </xsl:if>
                               
                                  
                                </xsl:for-each>

                            </td>

                            <td class="esp">
                               <!--IMÁGENES
                                titulo 
                             -->
                             <img>
                                <xsl:attribute name="src">Img/<xsl:value-of select="@nombre" />.png</xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="@nombre" />
                                </xsl:attribute>
                            </img>


                            </td>


                        </tr>

                    </table>

                    </xsl:for-each>

                </ol>


            </body>

        </html>


    </xsl:template>


</xsl:stylesheet>