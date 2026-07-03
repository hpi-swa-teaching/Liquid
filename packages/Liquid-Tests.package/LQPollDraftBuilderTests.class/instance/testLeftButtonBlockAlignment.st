testing
testLeftButtonBlockAlignment
	| builder firstFrame lastFrame expectedTotalHeight |
	builder := LQPollDraftBuilder new.
	
	firstFrame := builder leftButtonFrameForIndex: 1.
	lastFrame := builder leftButtonFrameForIndex: builder numberOfLeftButtons.
	expectedTotalHeight := builder numberOfLeftButtons * builder leftButtonRowHeight.
	
	self assert: 0.925 equals: ((lastFrame bottomFraction) roundTo: 0.001).
	self assert: expectedTotalHeight equals: ((lastFrame bottomFraction - firstFrame topFraction) roundTo: 0.001).