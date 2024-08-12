#let parallel-text(..language-versions) = {
    set par(justify: true)

	grid(
		columns: (1fr, 1fr),
		gutter: 11pt,
		language-versions.at(0),
		language-versions.at(1)
	)
}
