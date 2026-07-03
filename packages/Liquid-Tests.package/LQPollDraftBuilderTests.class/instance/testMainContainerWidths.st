testing
testMainContainerWidths
	| builder listFrame builderFrame |
	builder := LQPollDraftBuilder new.
	listFrame := builder questionListFrame.
	builderFrame := builder questionBuilderFrame.

	self assert: 0.25 equals: listFrame rightFraction.
	self assert: 0.25 equals: builderFrame leftFraction.
	self assert: 1.0 equals: builderFrame rightFraction.