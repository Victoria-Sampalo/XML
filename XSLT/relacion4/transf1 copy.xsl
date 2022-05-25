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
                    <p>
                        Día
                        <xsl:value-of select="numdia" />
                    </p>
                        <ul>
                            
                            <li>
                                <b>
                                    <xsl:value-of select="tarea/nombre" />
                                </b>
                                <text>- Prioridad:</text>
                                <xsl:value-of select="tarea/@prioridad" /> <br/>
                                <text>De </text>
                                <xsl:value-of select="tarea/hora-ini"/>
                                <text> a </text>
                                <xsl:value-of select="tarea/hora-fin"/>

                            </li>


                        </ul>


                    

                </xsl:for-each>

            </body>


        </html>

    </xsl:template>


</xsl:stylesheet>