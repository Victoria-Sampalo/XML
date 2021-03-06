<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">


        <html>
            <head>
                <title>Relacion 4. ejercicio 1</title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <h1>Rel 4. ejercicio 1</h1>
                <p>Crear un documento que para cada día, nos muestre la lista de tareas 
                    (nombre), prioridad, hora de inicio y fin.
                     </p>


                <!-- <ol>
                    <xsl:for-each select="horario/dia">

                        <ul>Día 
                            <xsl:value-of select="numdia" />
                            <xsl:text>- Prioridad  </xsl:text>
                            <xsl:value-of select="@prioridad" />

                        </ul>


                    </xsl:for-each>

                </ol>   -->

                <xsl:for-each select="horario/dia">
                
                    <div>
                        <p>
                        Día
                        <xsl:value-of select="numdia" />
                    </p>
                        <ul>  
                            <xsl:for-each select="tarea">
                            <li>
                                <b>
                                    <xsl:value-of select="nombre" />
                                </b>
                               - Prioridad:
                                <xsl:value-of select="@prioridad" /> <br/>
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