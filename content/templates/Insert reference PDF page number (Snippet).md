<%* 
	let PDF = DataviewAPI.page(tp.file.title).PDF
	let offset = Number(DataviewAPI.page(tp.file.title)["pdf-offset"])
	let page = Number(await tp.system.prompt(`What page number?`, 1, true))
	if (PDF) {
		PDF.path += `#page=${page + offset}`
		PDF.display = `page ${page}`
		tR += PDF
	} else {
		tR += `[page ${page + offset}]`
	}
-%>