<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">

  <html>

    <head>
        <title>Relacion 5 ejercicio 1</title>
        <meta charset="UTF-8"/>
        <style>
            h1{color: red; text-align:center}
            table{border-collapse:collapse; width:80%; margin:0 auto;
            text-align:center}
            table, td, th{border: 1px solid black;
             }

            th{background-color: blue}
            .cab2{background-color: green}
            .cuerpo{background-color: cyan}

            .rojo{color:red}
            .suf{color:orange}
            .bien{color:black}
            .verde{color:green}
            .amarillo{color:yellow}

            


        </style>

    </head>
    <body>
        <h1 >Calificaciones de la convocatoria de junio</h1>

        <table> <!--TR FILAS  TD COLUMNAS TH CABECERAS-->
          <th colspan="3">Datos</th>
          <th colspan="3">Notas</th>

         
            <tr>
              <td class="cab2">Nombre</td>
              <td class="cab2">Apellidos</td>
              <td class="cab2">Tareas</td>
            
           
              <td class="cab2">Cuestionarios</td>
              <td class="cab2">Examen</td>
              <td class="cab2">Final</td>
            </tr>
            <xsl:for-each select="notas/alumno">

            <!-- si es en junio que aparezca -->
              <xsl:if test="@convocatoria= 'Junio'">

                  
                <tr class="cuerpo">

                 <td>
                   <xsl:value-of select="nombre"/></td>
                 <td><xsl:value-of select="apellidos"/></td>
                 <td><xsl:value-of select="tareas"/></td>
                 <td><xsl:value-of select="cuestionarios"/></td>
                 <td><xsl:value-of select="examen"/></td>

                 <td>

                  
                   <xsl:choose>
                     <xsl:when test="final &gt; 9">
                      <span class="verde"><xsl:text>Sobresaliente</xsl:text></span> 

                     </xsl:when>
                     <xsl:when test="final &gt;7">
                      <span class="verde"><xsl:text>Notable</xsl:text></span> 
                   </xsl:when>
                    
                    
                    <xsl:when test="final &gt; 6">
                       <span class="verde"><xsl:text>Bien</xsl:text></span> 
                    </xsl:when>
                    <xsl:when test="final &gt; 5 ">
                       <span class="amarillo"><xsl:text> Suficiente</xsl:text></span> 
                    </xsl:when>
                    
                    <xsl:otherwise>
                        <span class="rojo"><xsl:text> Suspendido</xsl:text></span> 
                    </xsl:otherwise>
                  
                  
                  
                  
                  </xsl:choose>
                  
                  </td>
              </tr>

           

            </xsl:if>

          </xsl:for-each>


        </table>



    </body>
  </html>





</xsl:template>



</xsl:stylesheet>