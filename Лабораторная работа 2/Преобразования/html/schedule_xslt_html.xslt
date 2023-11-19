<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<style>
					table {
					font-family: Arial, sans-serif;
					border-collapse: collapse;
					width: 100%;
					}
					th, td {
					border: 1px solid #dddddd;
					text-align: left;
					padding: 8px;
					}
					th {
					background-color: #f2f2f2;
					}
				</style>
			</head>
			<body>
				<h2>
					Расписание группы: <xsl:value-of select="schedule/@group"/>
				</h2>
				<table>
					<tr>
						<th>Тип занятия</th>
						<th>Предмет</th>
						<th>Время</th>
					</tr>
					<xsl:for-each select="//day">
						<tr>
							<td colspan="5">
								<strong>
									<xsl:value-of select="@name"/>&#160;<xsl:value-of select="@date"/>
								</strong>
							</td>
						</tr>
						<xsl:for-each select="lesson">
							<tr>
								<td>
									<xsl:value-of select="type"/>
								</td>
								<td>
									<xsl:value-of select="subject"/>
								</td>
								<td>
									<xsl:value-of select="concat(start_time, ' - ', end_time)"/>
								</td>
							</tr>
						</xsl:for-each>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>