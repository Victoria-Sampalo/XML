<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

    <html>

        <head>
            <title> </title>
            <meta charset="UTF-8"/>
            <style>
                table,td, th{border: 1px solid black}
                table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}

            </style>

        </head>

        <body>
            <table>
                <tr> <th>Articulo</th></tr>
            <xsl:for-each select="tienda/producto">
            
            
                
                <tr>
                    <td><xsl:value-of select="articulo"/></td>
                </tr>



           


            </xsl:for-each>

 </table>
        </body>





    </html>



    </xsl:template>

</xsl:stylesheet>