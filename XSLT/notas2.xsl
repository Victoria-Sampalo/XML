<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
    <head>
        <title></title>
        <charset meta="UTF-8"/>
        <style>
            h1{color: red; text-align:center}
            table{border-collapse:collapse; width:80%; margin:0 auto;
            text-align:center}
            table, td, th{border: 1px solid black; }
            img{width:65px}

            

        </style>

    </head>
    <body>
        <h1></h1>
        <xsl:for-each select="">

           <!--IMAGEN en mxl <imagen>imagenes/icon1.png</imagen>
         <td>
                    <img>
                      <xsl:attribute name="src">
                        <xsl:value-of select="imagen"/>
                      </xsl:attribute>
                    </img>
                  </td>
        
            SIN PONER NADA EN EL XML
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

            ENLACE WEB SIN IR A NINGUNA PARTE

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


    


        </xsl:for-each>

    </body>


</html>







</xsl:template>





</xsl:stylesheet>
