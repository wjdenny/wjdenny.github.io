<%*
	let vid = await tp.system.prompt(`What is the video id or link?`, 1, true)
	vid = vid.split(`https://www.youtube.com/watch?v=`).slice(-1)[0]
-%>
<iframe
 width="720"
 height="576"
 src='https://www.youtube.com/embed/<% vid %>'
 title="YouTube video player"
 frameborder="0"
 allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
 allowfullscreen>
</iframe>
