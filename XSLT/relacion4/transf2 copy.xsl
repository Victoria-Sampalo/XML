<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">


        <html>
            <head>
                <title>Relacion 4. ejercicio 2

                </title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <h1>Rel 4. ejercicio 2</h1>
                <p>  Mostrar el Horario en orden por día de la semana:
                    

                    
                     </p>



                <xsl:for-each select="horario/dia/tarea">
                 <xsl:sort select="numdia" order="ascending"/>
                    <ol>
                        <xsl:choose>

                            <xsl:when test="numdia = 1">
                                <ul>
                                Lunes
                                </ul>
                           
                            </xsl:when>
                            <xsl:when test="numdia = 2">
                               
                                <ul>
                                    Martes
                                   
                                </ul>
                            </xsl:when>
                            <xsl:when test="numdia = 3">
                               
                                <ul>
                                    Miercoles
                                </ul>
                            </xsl:when>
                            <xsl:when test="numdia = 4">
                                
                                <ul>
                                    Jueves
                                </ul>
                            </xsl:when>
                            <xsl:otherwise>
                                
                                <ul>
                                    Viernes 
                                </ul>
                            </xsl:otherwise>
                            

                      

                       
                         </xsl:choose>
<!-- AGREGO EL RESTO DE FILAS -->
                         <ol>
                            
                            <ul>
                                <b>
                                    <xsl:value-of select="nombre" />
                                </b>
                                <text>- Prioridad:</text>
                                <xsl:value-of select="@prioridad" /> <br/>
                                <text>De </text>
                                <xsl:value-of select="hora-ini"/>
                                <text> a </text>
                                <xsl:value-of select="hora-fin"/>

                            </ul>


                        </ol>

                    </ol>

                </xsl:for-each>

            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>