toolbuilder
questionBuilderFrame
	| safeTotal maxPerRow totalRows rowHeight blockTop |
	safeTotal := self numberOfQuestionButtons max: 1.
	maxPerRow := self maxButtonsPerRow max: 1.
	totalRows := ((safeTotal - 1) // maxPerRow) + 1.
	rowHeight := 0.075.
	blockTop := 0.925 - (totalRows * rowHeight).
	^ self frame: blockTop fromTop: 0 fromLeft: 0.25 width: 0.75