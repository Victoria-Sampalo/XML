<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                <title>Relacion 3. ejercicio 5</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
        
        
                </style>                

            </head>
            <body>
                <h1>Relacion 3. ejercicio 5</h1>
                <p>El documento HTML deberá mostrar una tabla. La tabla 
                    contendrá una fila para cada producto. Las filas tendrán 
                    tres celdas, en la que aparecerá el código, el artículo y
                    la cantidad. </p>

                  <table>
                     <!--CABECERAS -->  
                    <th>CÓDIGO</th>
                    <th>ARTÍCULO</th>
                    <th>CANTIDAD</th>

                    <!--CONTENIDO TABLAS -->  
                    <xsl:for-each select="tienda/producto">
                    <!--tr FILA  -     td COLUMNA   -    th CABECERA -->

                    <tr>
                        <td>
                            <xsl:value-of  select="codigo"/> <!-- VALUE OF SMP CERRADO-->
                        </td>
                   
                        <td>
                            <xsl:value-of  select="articulo"/>
                        </td>
                   
                        <td>
                            <xsl:value-of  select="cantidad"/>
                        </td>
                    </tr>

                    </xsl:for-each>

                   
                 </table>

               
                

                 

               
            </body>


        </html>

    </xsl:template>

</xsl:stylesheet>