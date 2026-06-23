toolbuilder
leftButtonFrameForIndex: anInteger
	| safeTotal rowHeight blockTop buttonTop buttonBottom |
	safeTotal := self numberOfLeftButtons max: 1.
	rowHeight := 0.075.
	
	"Die Basis der linken Säule liegt bündig auf Y = 0.925"
	blockTop := 0.925 - (safeTotal * rowHeight).
	
	buttonTop := blockTop + ((anInteger - 1) * rowHeight).
	buttonBottom := buttonTop + rowHeight.
	
	^ self frame: buttonBottom fromTop: buttonTop fromLeft: 0.0 width: 0.25