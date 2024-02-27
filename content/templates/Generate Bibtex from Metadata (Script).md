<%* 
	// Pull citation data from the frontmatter of the page in
	// which the template is inserted.
	const cite = tp.frontmatter.cite
	
	// Define the fields gathered for each type of source.
	// Other fields may be present, but will not be included
	// in the BibTex output unless defined here.
	const keys = {
		article: [ 
			"author", 
			"title",
			"journal",
			"year", 
			"volume",
			"number",
			"doi",
			"url",
			"pages"
		],
		book: [
			"author",
			"title",
			"publisher",
			"address",
			"year"
		],
		booklet: [
			"title",
			"author",
			"howpublished",
			"month",
			"year"
		],
		conference: [
			"author",
			"title",
			"booktitle",
			"series",
			"year",
			"pages",
			"publisher",
			"address"
		],
		inproceedings: [
			"author",
			"title",
			"booktitle",
			"series",
			"year",
			"pages",
			"publisher",
			"address"
		],
		inbook: [
			"author",
			"editor",
			"title",
			"booktitle",
			"year",
			"publisher",
			"address",
			"pages"
		],
		incollection: [
			"author",
			"editor",
			"title",
			"booktitle",
			"year",
			"publisher",
			"address",
			"pages"
		],
		manual: [
			"title",
			"author",
			"organization",
			"address",
			"year"
		],
		mastersthesis: [
			"author",
			"title",
			"school",
			"year",
			"address",
			"month"
		],
		misc: [
			"title",
			"author",
			"howpublished",
			"year",
			"note"
		],
		phdthesis: [
			"author",
			"title",
			"school",
			"address",
			"year",
			"month"
		],
		proceedings: [
			"editor",
			"title",
			"series",
			"volume",
			"publisher",
			"address",
			"year"
		],
		techreport: [
			"title",
			"author",
			"institution",
			"address",
			"number",
			"year",
			"month"
		],
		unpublished: [
			"author",
			"title",
			"year"
		]
	}

	// Start the BibTex entry with the citation type and cite
	// key.
	let entry = [`@${cite.type}{${cite.key}`]
	if (!keys[cite.type]) { console.log(`No keys defined for citation type of '${cite.type}'.`) }
	keys[cite.type]?.forEach(key => {
		if (cite[key]) { 
			if (['author', 'editor'].contains(key) && Array.isArray(cite[key])) { 
				cite[key] = cite[key].join(` and `)
			}
			entry.push(`\t${key} = {${cite[key]}}`)
		}
	})

	entry = entry.join(`,\n`)
	entry = `${entry}}`
-%>
```bibtex
<% entry %>
```