<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- COGEME ESTO Y LE DAS ESTA FORMA-->
    <!-- una PLANTILLA POR CADA NODO
se puede coger la raiz / o biblioteca-->
    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>Transformación TEORIA 2</title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <h1>PRUEBA 1</h1>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <!--ORDENAR POR NOMBRE  ASCENDENTE     ascending   Y DESCENDENTE SERIA....-->
                        <xsl:sort select="nombre" order="descending" />
                        <!--MOSTRAR LO QUE CUMPLAN UNA CONDICION si cumple eso hazme lo siguiente
mostrar lo que sea MENOR O IGUAL QUE 2009. dejaría fuera daw que es 2010
menor &lt;  - mayor &gt;   -  distinto !=     -->


                        <!--TODO LO DECRETO QUE SEA MENOR O IGUAL A 2009 AMARILLO Y EL RESTO VERDE -->
                        <xsl:if test="decretoTitulo/@año &lt;= 2009">
                            <li>
                                <xsl:value-of select="nombre" />
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>


        </html>

    </xsl:template>


    <!--
<body>
                <h1>PRUEBA 1 MENOR O IGUAL MAYOR O DISTINTO QUE</h1>
                <ul>
                 <xsl:for-each select="ies/ciclos/ciclo">
                 <!-ORDENAR POR NOMBRE  ASCENDENTE     ascending   Y DESCENDENTE SERIA....
                 <xsl:sort select="nombre" order="descending"/>
  <!-MOSTRAR LO QUE CUMPLAN UNA CONDICION si cumple eso hazme lo siguiente
mostrar lo que sea MENOR O IGUAL QUE 2009. dejaría fuera daw que es 2010
menor &lt;  - mayor &gt;   -  distinto !=     


<!-TODO LO DECRETO QUE SEA MENOR O IGUAL A 2009 AMARILLO Y EL RESTO VERDE 
  <xsl:if test="decretoTitulo/@año &lt;= 2009">
                <li> <xsl:value-of select="nombre"/> </li>
            </xsl:if>
                </xsl:for-each>
            </ul>
            </body>





    
 -->


</xsl:stylesheet>