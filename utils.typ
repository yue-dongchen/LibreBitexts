#let parallel-text(left, right) = {
    set par(justify: true)

	grid(
		columns: (1fr, 1fr),
		gutter: 11pt,
		left,
		if right != [] [
			#right
		] else [
			#rect(radius: (rest: 5pt))[#emph[Omission by the translator]]
		]
	)
}
