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
            table, td, th{border: 1px solid black; }
            img{width:65px}

            

        </style>

    </head>
    <body>
        <h1 >NOTAS</h1>

        <!--IMAGEN en mxl <imagen>imagenes/icon1.png</imagen>
         <td>
                    <img>
                      <xsl:attribute name="src">
                        <xsl:value-of select="imagen"/>
                      </xsl:attribute>
                    </img>
                  </td>


            IMAGEN SIN NADA 
             <td>
                <img>
                   <xsl:attribute name="src">Img/<xsl:value-of select="@nombre" />.png</xsl:attribute>
                    <xsl:attribute name="title">
                     <xsl:value-of select="@nombre" />
                      </xsl:attribute>
                </img>
              </td>      
                
           ENLACES WEB <ies nombre="IES Mar de Alborán" web="http://www.maralboran.com/">

                <p>Página web: <a><xsl:attribute name="href">
                   <xsl:value-of select="ies/@web"/>
                   </xsl:attribute>
                   
                
                <xsl:value-of select="ies/@web"/></a></p>


                HREF SIN NADA SOLO UN ASPECTO DE ENLACE
                 <a>
                    <xsl:attribute name="href">
                     #
                     <xsl:value-of select="." />

                      </xsl:attribute>
                       <xsl:value-of select="." />
                       <br />

                  </a>

                
              -->







        <!--OL O UL  y luego LI
        escribir texto SPAM sino sin el -->

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