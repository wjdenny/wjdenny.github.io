<%*
	let snippet = (await tp.system.clipboard());
	snippet = snippet
	.replace(/([A-z])-\n([A-z])/g, (match, ...args) => {
		return `${args[0]}${args[1]}`
	})
	.replace(/\r\n/g, ` `)
	.replaceAll(`“`, `"`)
	.replaceAll(`”`, `"`)
	.replaceAll(`—`, `---`)
	.replaceAll(`’`, `'`)
	.replaceAll(``,``)
	.replace(/\s+/g,` `)
	
	tR += snippet;
	
	let page = Number(await tp.system.prompt(
		`What page number?`,
		NaN,
		false
	));

	if (page) {
		tR += ` [page ${page}]`
	}
-%>