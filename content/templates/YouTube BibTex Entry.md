<%*
const url = await tp.system.clipboard();
const page = await tp.obsidian.request({ url });
const document = (new DOMParser()).parseFromString(page, "text/html");
const $ = s => document.querySelector(s);
const title = $("meta[property='og:title']").content
const channel = $("link[itemprop='name']").getAttribute("content");
const publishDate = $("meta[itemprop='uploadDate']").content
const year = moment(publishDate).format("YYYY");
const month = moment(publishDate).format("MM");
const access = moment().format("YYYY-MM-DD");
-%>
```bibtex
@misc{
  title = {<% title %>},
  author = {<% channel %>},
  publisher = {YouTube},
  howpublished = {\url{<% url %>}},
  year = {<% year %>},
  month = {<% month %>},
  note = {Accessed <% access %>}
}
```