<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <body>
        <input type="text" placeholder="text"></input>
	  <h2>BOOKS CATALOG </h2>
      <ol>
        <li>Book Title</li>
            <xsl:for-each select="BooksCatalog/book">
      			<ul><li><xsl:value-of  select="title"/></li></ul>	 
            </xsl:for-each>
        <li>Book Author</li>
            <xsl:for-each select="BooksCatalog/book">
      			<ul><li><xsl:value-of  select="author"/></li></ul>	 
            </xsl:for-each>
        <li>ISBN</li>
            <xsl:for-each select="BooksCatalog/book">
      			<ul><li><xsl:value-of  select="isbn"/></li></ul>	 
            </xsl:for-each>
        <li>Published By</li>
            <xsl:for-each select="BooksCatalog/book">
      			<ul><li><xsl:value-of  select="publisher"/></li></ul>	 
            </xsl:for-each>
        <li>Edition</li>
            <xsl:for-each select="BooksCatalog/book">
      			<ul><li><xsl:value-of  select="edition"/></li></ul>	 
            </xsl:for-each>
        <li>Price</li>
            <xsl:for-each select="BooksCatalog/book">
      			<ul><li><xsl:value-of  select="price"/></li></ul>	 
            </xsl:for-each>
      </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>