toolbuilder
bottomButtonFrameForIndex: anInteger
	| zeroBasedIndex col row topStart bottomEnd leftStart |
	zeroBasedIndex := anInteger - 1.
	col := zeroBasedIndex \\ (self maxButtonsPerRow max: 1).
	row := zeroBasedIndex // (self maxButtonsPerRow max: 1).
	
	leftStart := col * self bottomButtonWidth.
	topStart := 0.75 + (row * self bottomButtonRowHeight).
	bottomEnd := topStart + self bottomButtonRowHeight.
	
	^ self frame: bottomEnd fromTop: topStart fromLeft: leftStart width: self bottomButtonWidth