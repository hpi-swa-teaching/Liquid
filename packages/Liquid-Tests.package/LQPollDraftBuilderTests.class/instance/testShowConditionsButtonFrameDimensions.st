testing
testShowConditionsButtonFrameDimensions
	| builder frame |
	builder := LQPollDraftBuilder new.
	frame := builder leftButtonFrameForIndex: 4.
	
	self assert: 0.0 equals: frame leftFraction.
	self assert: 0.25 equals: frame rightFraction.
	self assert: 0.075 equals: ((frame bottomFraction - frame topFraction) roundTo: 0.001).