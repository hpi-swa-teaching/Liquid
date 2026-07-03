testing
testCreatePollButtonFrame
	| menu frame expectedWidth |
	menu := LQHostMenu new.
	frame := menu createPollButtonFrame.
	
	self assert: (frame isKindOf: LayoutFrame) 
		description: 'createPollButtonFrame must return a LayoutFrame'.
	
	expectedWidth := frame rightFraction - frame leftFraction.
	self assert: expectedWidth > 0.0 
		description: 'The Create Poll button must have a width greater than zero'.