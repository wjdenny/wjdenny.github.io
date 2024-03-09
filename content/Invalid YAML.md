```dataviewjs

const result = []

for (let [fname, fcache] of Object.entries(dv.app.metadataCache.fileCache)) {
  // fname is the filename
  // fcache is the entry from metadataCache.fileCache
  // mcache is the actual metadataCache.metadataCache entry
  const mcache = dv.app.metadataCache.metadataCache[fcache.hash]
  
  if ( (mcache && !mcache.frontmatter &&
        mcache.hasOwnProperty("sections") &&
        mcache["sections"].some(s => s.type == "yaml"))
     || ( mcache && mcache.frontmatter && mcache.frontmatter.notvalid ) 
     ) {
    const yamlIndex = mcache["sections"].findIndex(s => s.type == "yaml")
    let yamlStart, yamlEnd
  
    // Pull out start and end, if section is found
    if ( yamlIndex !== -1 ) {
      yamlStart = mcache["sections"][yamlIndex]?.position.start.line
      yamlEnd = mcache["sections"][yamlIndex]?.position.end.line
    }
    
    // Determine the cause of the faulty frontmatter
    let cause
    
    if ( mcache.frontmatter?.notvalid )        cause = "Not valid"
    else if ( yamlIndex == -1 )                cause = "NO yaml"
    else if ( yamlStart == 0 && yamlEnd == 1 ) cause = "Empty"
    else cause = "Bad"
    
    result.push([dv.fileLink(fname), cause, yamlStart ?? "", yamlEnd ?? ""])
    // console.log(fname, " » ", mcache) 
  }   
  //console.log(fname, " » ", fcache, "\n  »» ", mcache)
}

dv.table(["File", "Yaml status", "Start", "End"], result)
```
