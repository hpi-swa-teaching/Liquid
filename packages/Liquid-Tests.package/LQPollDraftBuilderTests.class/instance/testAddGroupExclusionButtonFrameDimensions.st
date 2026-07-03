testing
testAddGroupExclusionButtonFrameDimensions
	| builder frame |
	builder := LQPollDraftBuilder new.
	frame := builder leftButtonFrameForIndex: 5.
	
	self assert: 0.0 equals: frame leftFraction.
	self assert: 0.25 equals: frame rightFraction.
	self assert: 0.075 equals: ((frame bottomFraction - frame topFraction) roundTo: 0.001)
		description: 'Add Group Exclusion Button (Index 5) must have the correct row height'.