<%*
	const tags = [ `type/moc`, `type/statement` ]
	.map(t => `#${t}`);
	const queries = tags.map(t => `LIST FROM ${t} SORT file.mtime DESC LIMIT 10`)
-%>
## Areas of interest
<%
	(await DataviewAPI.queryMarkdown(queries[0])).value
%>
## Recent writing
<%
	(await DataviewAPI.queryMarkdown(queries[1])).value
%>