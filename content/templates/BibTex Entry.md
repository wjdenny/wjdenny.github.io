<%*
const labels = [ 
	"article: An article from a journal, magazine, newspaper, or periodical.",
	"book: A book where the publisher is clearly identifiable.",
	"booklet: A printed work that is bound, but does not have a clearly identifiable publisher or supporting institution.",
	"inbook: A section, such as a chapter, or a page range within a book.",
	"incollection: A titled section of a book. Such as a short story within the larger collection of short stories that make up the book.",
	"inproceedings: A paper that has been published in conference proceedings.",
	"conference: A paper that has been published in conference proceedings.",
	"proceedings: A paper that has been published in conference proceedings.",
	"manual: A technical manual for a machine software such as would come with a purchase to explain operation to the new owner.",
	"mastersthesis: A thesis written for the Master’s level degree.",
	"misc: Used if none of the other entry types quite match the source. Frequently used to cite web pages, but can be anything from lecture slides to personal notes.",
	"phdthesis: A thesis written for the PhD level degree.",
	"techreport: An institutionally published report such as a report from a school, a government organization, an organization, or a company. This entry type is also frequently used for white papers and working papers.",
	"unpublished: A document that has not been officially published such as a paper draft or manuscript in preparation."
]

const values = [ 
	"article",
	"book",
	"booklet",
	"inbook",
	"incollection",
	"inproceedings",
	"conference",
	"proceedings",
	"manual",
	"mastersthesis",
	"misc",
	"phdthesis",
	"techreport",
	"unpublished"
]

const throw_on_cancel = true
const placeholder = ""

let type = await tp.system.suggester(labels, values, throw_on_cancel, placeholder)

const citekey = tp.file.title
const yearMatch = tp.file.title.match(/^@([0-9]{4})/)
const year = yearMatch && yearMatch[1] !== "0000" ? yearMatch[1] : "n.d."
const title = tp.frontmatter.alias ?? tp.frontmatter.aliases[0] ?? ""

const fields = {
	article: [ "author", "journal", "volume", "number", "pages", "month" ],
	book: [ "author", "publisher", "editor", "address" ],
	inbook: [ "author", "chapter", "publisher", "volume", "number", "series", "type", "address", "edition", "month", "pages" ],
	booklet:[ "month", "author", "address", "editor", "volume", "number", "series", "organization" ],
	conference: [ "month", "author", "booktitle", "address", "editor", "volume", "number", "series", "pages", "address", "organization", "publisher" ],
	inproceedings: [ "month", "author", "booktitle", "address", "editor", "volume", "number", "series", "pages", "address", "organization", "publisher" ],
	incollection: [ "month", "author", "booktitle", "address", "editor", "volume", "number", "series", "pages", "publisher" ],
	manual: [ "author", "organization", "address", "edition", "month", "howpublished" ],
	mastersthesis: [ "month", "author", "school", "address", "type" ],
	misc: [ "author", "howpublished" ],
	phdthesis: [ "month", "author", "school", "address", "type" ],
	proceedings: [ "month", "editor", "volume", "number", "series", "publisher", "address", "howpublished" ],
	techreport: [ "author", "institution", "number", "howpublished" ],
	unpublished: [ "author", "institution", "number", "howpublished" ]
}
-%>
@<% type %>{<% citekey %>,
  title = {<% title %>},
  year = {<% year %>},
<% fields[type].map(e => `  ${e} = {},`).join(`\n`) %>
  note = {}
}