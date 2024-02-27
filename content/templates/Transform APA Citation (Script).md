<% 
	(e => {
		// Name, YYYY
		if (m = e.match(/([A-Za-zÀ-ÖØ-öø-ÿ\s&,\-\.]+),\s?([0-9]{4}[a-z]?)/)) {
			return `[[${m[2]} ${m[1].replace(` and `, ` & `)}|${m[0]}]]`
		}
		// Name (YYYY) or // Name's (YYYY)
		else if (m = e.match(/([A-Za-zÀ-ÖØ-öø-ÿ\s&,\-\.]+)(?:'s)? \(([0-9]{4}[a-z]?)\)/)) {
			return `[[${m[2]} ${m[1].replace(` and `, ` & `)}|${m[0]}]]`
		}
		else { throw new Error(`Citation should be in a recognizable format.`) }
	})(tp.file.selection())
%>