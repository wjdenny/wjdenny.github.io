<%*
	const mocTag = `#🕮`;
	const statementTag = `#🖿`;
	tR += DataviewAPI.pages(statementTag).filter(p => {
		const inlinks = p.file.inlinks.map(q => DataviewAPI.page(q));
		const tags = inlinks.flatMap(q => q.file.tags);
		return tags.array().includes(mocTag);
	}).map(p => p.file.link).map(p => `- [[${p.path.replace(/\.[a-z]+$/, "")}]]`).join(`\n`);
-%>