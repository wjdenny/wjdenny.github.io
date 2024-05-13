<%*
	const q = `LIST FROM #🖿`
-%>
<%
	((await DataviewAPI.queryMarkdown(q)).value).replaceAll(/\[.*\|/g, "[[")
%>