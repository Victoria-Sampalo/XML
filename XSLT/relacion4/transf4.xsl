<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">


        <html>
            <head>
                <title>Relacion 4. ejercicio 4

                </title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <h1>Rel 4. ejercicio 4</h1>
                <p> Mostrar  el  horario  y  al  final  del  horario,  sacar  lista  de  todas  las  tareas 
                    indicando si son por la mañana, por la tarde o al mediodía 
                     
                    
                     </p>


                <xsl:for-each select="horario/dia">
                    <xsl:sort select="numdia" order="ascending" />

                    <div>

                        <xsl:choose>

                            <xsl:when test="numdia = 1">
                                
                                Lunes
                                
                           
                            </xsl:when>


                            <xsl:when test="numdia = 2">
                               
                              
                                    Martes
                                   
                                
                            </xsl:when>
                            <xsl:when test="numdia = 3">
                               
                              
                                    Miercoles
                               
                            </xsl:when>
                            <xsl:when test="numdia = 4">
                                
                             
                                    Jueves
                               
                            </xsl:when>
                            <xsl:otherwise>
                                
                               
                                    Viernes 
                                
                            </xsl:otherwise>


                        </xsl:choose>


                        <ul>
                            <xsl:for-each select="tarea">
                                <li>
                                    <b>
                                        <xsl:value-of select="nombre" />
                                    </b>
                                    <!--si no tiene prioridad  si es != de vacio
                                prioridad != ''
                                if test @prioridad -->

                                    <xsl:if test="@prioridad != ''">
                                        - Prioridad:
                                        <xsl:value-of select="@prioridad" />

                                    </xsl:if>


                                    <br />
                                    De
                                    <xsl:value-of select="hora-ini" />
                                    a
                                    <xsl:value-of select="hora-fin" />

                                </li>
                            </xsl:for-each>


                        </ul>
                    </div>

                </xsl:for-each>
                <!--POR APARTE DE TODO  -->

                <xsl:for-each select="horario/dia/tarea">
                    <div>
                        <p>
                       <xsl:value-of select="nombre" />
                        
                       <xsl:choose>
                           <xsl:when test="hora-ini &lt;12"> -Por la mañana

                           </xsl:when>
                           <xsl:when test="hora-ini &lt;16"> -Al mediodía
                               
                        </xsl:when>
                        <xsl:otherwise>
                            - Por la tarde

                        </xsl:otherwise>



                       </xsl:choose>


                       </p>
                    </div>


                </xsl:for-each>

            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>