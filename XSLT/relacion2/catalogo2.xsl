<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 6</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
        
                    <!--colores -->
                    .rojo{color:red}
                    .verde{color:green}
        
                         </style>

            </head>
            <body>
                <h1>EJERCICIO 6.</h1>
                <p>Mostrar una tabla con el nombre del disco en verde si el año es posterior al 2000, y en rojo
                    si el año es anterior al 2000.</p>
               
               <table>

               <tr><th>Titulo</th> </tr> 
               <xsl:for-each select="catalogo/cds/cd">

                <xsl:choose>
                    <xsl:when test="año &lt; 2000">
                    
                    <tr>
                        <td>
                             <spam  class="rojo">
                            <xsl:value-of select="titulo"/>
                        </spam>

                        </td>

                    </tr>

                    </xsl:when>
                    <xsl:when test="año &gt; 2000">

                        <tr>
                            <td>
                                 <spam class="verde">
                                <xsl:value-of select="titulo"/>
                            </spam>
    
                            </td>
    
                        </tr>                    
                    </xsl:when>
                    <xsl:otherwise>

                        <tr> 
                            <td>
                               <xsl:value-of select="titulo"/>
        
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