<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                <title>Relacion 3. ejercicio 4</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
        
        
                         </style>                

            </head>
            <body>
                <h1>Relacion 3. ejercicio 4</h1>
                <p>Cambiar la hoja de estilo para que los artículos se presenten 
                    en una tabla con dos columnas. En la primera de ellas se
                     escribirá un texto fijo: “ARTICULOS DE MI TIENDA”.
                    </p>

                  <table>
                    <tr><th colspan="2">ARTICULOS DE MI TIENDA</th> </tr> 
                    

                    <xsl:for-each select="tienda/producto">
                
                    <tr> 
                        <td>
                          ARTICULO: 
    
                        </td>
    
    
                   
                   
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