testing
testBottomButtonBlockBoundaries
	| menu frame1 frameLast |
	menu := LQHostMenu new.
	frame1 := menu bottomButtonFrameForIndex: 1.
	frameLast := menu bottomButtonFrameForIndex: menu numberOfBottomButtons.

	self assert: 0.75 equals: frame1 topFraction 
		description: 'The bottom button block must start at 75% height'.
	self assert: 1.0 equals: frameLast bottomFraction 
		description: 'The last button must align flush with the bottom (1.0)'.