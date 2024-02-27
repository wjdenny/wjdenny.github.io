<%* await tp.file.move(`Resources/Articles/${tp.file.title}`) -%>
<%*
	let vid = await tp.system.prompt(`What is the video id or link?`, 1, true)
	vid = vid.split(`https://www.youtube.com/watch?v=`).slice(-1)[0]

	let yt = await request({
		url: `https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=${vid}&format=json`,
		contentType: `application/json`
	}).then(e => JSON.parse(e), e => console.error(`Error retrieving YouTube data.`, e))
-%>
---
alias: {<% yt.title %>}
author: {<% yt.author_name %>}
organization: {<% yt.provider_name %>}
date: <% tp.file.cursor(1) %>
url: <% `https://www.youtube.com/watch?v=${vid}` %>
---
# <% yt.title %>
This is a <% `#` %>literature-note related to [[]].
[[<% yt.author_name %>]] posted this on [[<% yt.provider_name %>]].

```bibtex
`= this.author`
```
---
<iframe
 width="720"
 height="576"
 src='https://www.youtube.com/embed/<% vid %>'
 title="YouTube video player"
 frameborder="0"
 allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
 allowfullscreen>
</iframe>
## Notes
<% tp.file.cursor(1) %>

