testing
testBottomButtonGridWrapping
	| menu frame1 frame2 frame5 |
	menu := LQHostMenu new.
	frame1 := menu bottomButtonFrameForIndex: 1.
	frame2 := menu bottomButtonFrameForIndex: 2.
	frame5 := menu bottomButtonFrameForIndex: 5. 

	self assert: frame1 topFraction equals: frame2 topFraction.
	self assert: frame1 rightFraction equals: frame2 leftFraction.
	
	self assert: frame5 topFraction equals: frame1 bottomFraction.
	self assert: frame5 leftFraction equals: frame1 leftFraction.