testing
testCreatePollButtonFrame
	| menu frame expectedWidth |
	menu := LQHostMenu new.
	frame := menu createPollButtonFrame.
	
	self assert: (frame isKindOf: LayoutFrame).
	
	expectedWidth := frame rightFraction - frame leftFraction.
	self assert: expectedWidth > 0.0.