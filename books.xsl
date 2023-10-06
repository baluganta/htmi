<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <body>
	  <h2>BOOKS CATALOG </h2>
		<table border="3" >
      		<tr >
        		<th>Book Title</th>
        		<th>Book Author</th>
				<th>ISBN</th>
		    	<th>Published By</th>
				<th>Edition</th>
		    	<th>Price</th>
      		</tr>

	    	<xsl:for-each select="BooksCatalog/book">
      			<tr>
        		 <td><xsl:value-of  select="title"/></td>
         		 <td><xsl:value-of  select="author"/></td>
				 <td><xsl:value-of  select="isbn"/></td>
		         <td><xsl:value-of  select="publisher"/></td>
				 <td><xsl:value-of select="edition"/></td>
		         <td><xsl:value-of  select="price"/></td>
	        	</tr>
			
      		</xsl:for-each>
    	</table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
