toolbuilder
questionListFrame
	| safeTotal rowHeight blockTop |
	safeTotal := self numberOfLeftButtons max: 1.
	rowHeight := 0.075.
	blockTop := 0.925 - (safeTotal * rowHeight).
	
	^ self frame: blockTop fromTop: 0.0 fromLeft: 0.0 width: 0.25