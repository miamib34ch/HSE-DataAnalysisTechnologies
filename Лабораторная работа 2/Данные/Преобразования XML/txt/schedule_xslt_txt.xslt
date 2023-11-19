<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="//day">
			<xsl:value-of select="@name"/>&#160;<xsl:value-of select="@date"/>
			<xsl:text>&#xa;</xsl:text>
			<xsl:for-each select="lesson">
				<xsl:value-of select="type"/>
				<xsl:text>: </xsl:text>
				<xsl:value-of select="subject"/>
				<xsl:text> - </xsl:text>
				<xsl:value-of select="start_time"/>
				<xsl:text> до </xsl:text>
				<xsl:value-of select="end_time"/>
				<xsl:text>, </xsl:text>
				<xsl:value-of select="classroom"/>
				<xsl:text>&#xa;</xsl:text>
			</xsl:for-each>
			<xsl:text>&#xa;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>