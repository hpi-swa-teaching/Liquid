testing
testQuestionListLeavesSpaceForLeftButtons
	| builder listFrame firstButtonFrame |
	builder := LQPollDraftBuilder new.
	listFrame := builder questionListFrame.
	firstButtonFrame := builder leftButtonFrameForIndex: 1.

	self assert: listFrame bottomFraction equals: firstButtonFrame topFraction
		description: 'The question list must not overlap with the left buttons'.
	self assert: listFrame bottomFraction equals: builder leftButtonBlockTop.