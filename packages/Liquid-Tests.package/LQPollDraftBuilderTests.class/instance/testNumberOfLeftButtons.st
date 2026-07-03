testing
testNumberOfLeftButtons
	| builder |
	builder := LQPollDraftBuilder new.
	self assert: 5 equals: builder numberOfLeftButtons.