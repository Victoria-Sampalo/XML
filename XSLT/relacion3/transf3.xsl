<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                <title>Relacion 3. ejercicio 3</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
        
        
                         </style>                

            </head>
            <body>
                <h1>Relacion 3. ejercicio 3</h1>
                <p>Cambiar la hoja de estilo XSLT para que 
                los artículos se presenten en una tabla
                 con una única columna.
                    
                    </p>

                  <table>
                    <tr><th>Articulos</th> </tr> 

                    <xsl:for-each select="tienda/producto">
                
                    <tr> 
                        <td>
                           <xsl:value-of select="articulo"/>
    
                        </td>
    
    
                    </tr>
                
                


                   </xsl:for-each>

                 </table>

               
                

                 

               
            </body>


        </html>

    </xsl:template>

</xsl:stylesheet>