testing
testQuestionButtonGridWrapping
	| builder frame1 frame2 frame3 |
	builder := LQPollDraftBuilder new.
	frame1 := builder questionButtonFrameForIndex: 1.
	frame2 := builder questionButtonFrameForIndex: 2.
	frame3 := builder questionButtonFrameForIndex: 3.

	self assert: frame1 topFraction equals: frame2 topFraction.
	self assert: frame1 rightFraction equals: frame2 leftFraction.
	self assert: frame3 topFraction equals: frame1 bottomFraction.
	self assert: frame3 leftFraction equals: frame1 leftFraction.