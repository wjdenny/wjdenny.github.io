
## Use of tags
Tags can both express the entity/type that the page and topics that the content relates to.

Entity tags (like #type/statement, #type/source, or #type/moc) are generally only written in the YAML frontmatter of a page.

Topic tags (for example, #topic/culture/habitus)  are expressed within the page immediately following relevant content. Historically, I've used these tags in frontmatter as well, but I am moving away from that for two reasons. First, putting them in frontmatter leads me to try deciding how to organize and denominate topics at the start. This is a top-down or taxonomic approach that I don't find useful in practice. Second, putting the topic tags near the content it refers to can take advantage of search snippets within Obsidian.

```query
tag:#topic/culture/habitus
```

## Types of pages
### Literature notes
These are literature sources like books and articles. [[Literature note filenames are BibTex keys]]. These pages will include the tag `source` to identify it as a source for search and graph view queries. I've tried both topic pages and topic tags in the past, but instead avoid imposing any topic structure up front and let sources link together organically through [[#Atomic notes]] and [[#Maps of content]] ([[Gaul's Law]]).

The purpose of a source is to contain the metadata of the source (including BibTeX entries), quotes from the source I want to remember, and paraphrased statements that are links to [[#Atomic notes]].

Each source should also contain a one-sentence summary of the source's content. This is usually written in the past tense with limited assumed context just as if I were referring to the article in a literature review. I can use this summary in literature reviews or in annotated bibliographies, or to familiarize and remind myself of the general idea of the source at a later date.

Quotes are always represented in a source document with block quotes. Double block quotes are used when the source quotes another source. If the source has page numbers, a reference to the page number will be provided. If a PDF is publicly available for the source, the PDF will be provided in the front-matter and each quote will include a link to the PDF with the page number.

### Atomic notes
Atomic notes are pages that represent a complete and atomic idea. These are titled as a complete sentence including punctuation. Simple, positive, declarative sentences are ideal for this, and overly complicated sentences are a good indicator that the idea is not as atomic as it could be.

The concept of an atomic note is derived from [[Niklas Luhmann]]'s [[Zettelkasten]] workflow ([[@2020jenks_workflow]], [[@2020anthonysdesk_mocs]]).

### Maps of content
As I begin to collect a large number of ideas on a topic, maps of content serve to keep an index of those [[#Atomic notes]] and organize them as a review on that topic. Maps of content could be quite general, like [[Linguistic minority students in higher education]] or more specific and project-based in its purpose, such as [[An Argument For Better Language Data Collection]]. Broad topics are likely to contain links to sub-topics as those develop and the map of content gets unwieldy.