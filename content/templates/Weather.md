<%*
const url = `https://wttr.in/?d0TQ`
const document = (new DOMParser()).parseFromString(await tp.obsidian.request({ url }), "text/html")
const wttr = document.querySelector("pre").innerText
-%>
```txt
<% wttr %>
```