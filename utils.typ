#let parallel-text(..language-versions) = {
  let language-versions = language-versions.pos()
  box(height: auto, columns(language-versions.len(), gutter: 11pt)[
      #set par(justify: true)
      #let position = 1

      #for version in language-versions {
        version
        if position == language-versions.len() {
          break
        }
        colbreak()
        let position = position + 1
      }
    ]
  )
}
