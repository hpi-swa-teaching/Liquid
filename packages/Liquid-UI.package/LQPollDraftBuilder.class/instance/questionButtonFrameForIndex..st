toolbuilder
questionButtonFrameForIndex: anInteger

	| zeroBasedIndex col row rowTop rowBottom leftStart |
	zeroBasedIndex := anInteger - 1.
	col := zeroBasedIndex \\ (self maxButtonsPerRow max: 1).
	row := zeroBasedIndex // (self maxButtonsPerRow max: 1).
	
	rowTop := self questionButtonBlockTop + (row * self questionButtonRowHeight).
	rowBottom := rowTop + self questionButtonRowHeight.
	leftStart := 0.25 + (col * self questionButtonWidth).
	
	^ self frame: rowBottom fromTop: rowTop fromLeft: leftStart width: self questionButtonWidth