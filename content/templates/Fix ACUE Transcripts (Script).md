<%*
	var content = await tp.system.clipboard()

content = content
.replaceAll("Page", "")
.replaceAll(/of [0-9]+/g, "")
.replaceAll("ZOOM", "")
.replaceAll(/^[0-9][^0-9A-z]*$/gm, "")
.replaceAll(/^Copyright.*$/gm, "")
.replaceAll(/^No part of this document.*$/gm, "")
.replaceAll("www.acue.org | info@acue.org  ", "")
.replaceAll(/^([^\[\n]+\[[0-9:]{8}\])/gm, "> **$1**")
.replaceAll("\n", " ")
.replaceAll(/\s+/gm, " ")
.replaceAll("> ", "\n\n> ")
.replaceAll("]** ", "]**\n> ")
//.matchAll(/^([^\[\n]+\[[0-9:]{8}\])(.*)$/gm)

console.clear()
console.log(content)
-%>
<% content %>