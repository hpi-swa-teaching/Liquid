toolbuilder
questionButtonFrameForIndex: anInteger
	| safeTotal maxPerRow zeroBasedIndex col row actualCols totalRows buttonWidth rowHeight blockTop rowTop rowBottom leftStart |
	
	safeTotal := self numberOfQuestionButtons max: 1.
	maxPerRow := self maxButtonsPerRow max: 1.
	
	zeroBasedIndex := anInteger - 1.
	col := zeroBasedIndex \\ maxPerRow.
	row := zeroBasedIndex // maxPerRow.
	
	actualCols := safeTotal min: maxPerRow.
	totalRows := ((safeTotal - 1) // maxPerRow) + 1.
	
	buttonWidth := 0.75 / actualCols.
	rowHeight := 0.075.
	
	blockTop := 0.925 - (totalRows * rowHeight).
	rowTop := blockTop + (row * rowHeight).
	rowBottom := rowTop + rowHeight.
	
	leftStart := 0.25 + (col * buttonWidth).
	
	^ self frame: rowBottom fromTop: rowTop fromLeft: leftStart width: buttonWidth