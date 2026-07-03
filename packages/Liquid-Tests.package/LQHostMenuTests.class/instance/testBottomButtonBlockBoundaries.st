testing
testBottomButtonBlockBoundaries
	| menu frame1 frameLast |
	menu := LQHostMenu new.
	frame1 := menu bottomButtonFrameForIndex: 1.
	frameLast := menu bottomButtonFrameForIndex: menu numberOfBottomButtons.

	self assert: 0.75 equals: frame1 topFraction.
	self assert: 1.0 equals: frameLast bottomFraction.