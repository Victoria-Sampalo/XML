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



                     <xsl:for-each select="horario/dia">
                     <xsl:sort select="numdia" order="ascending"/>

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

                                 <xsl:if test="@prioridad != ''" >
                                - Prioridad:
                                 <xsl:value-of select="@prioridad" />
                                 
                                </xsl:if>
                                 
                                 
                                 <br/>
                                De 
                                 <xsl:value-of select="hora-ini"/>
                                 a 
                                 <xsl:value-of select="hora-fin"/>
 
                             </li>
                             </xsl:for-each>
 
 
                         </ul>
                         </div>
 
 
                     
 
                 </xsl:for-each>
            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>