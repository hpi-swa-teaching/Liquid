tests
testCopyIdButton
	| runningPollView |
	
	runningPollView := LQRunningPollView newWithPoll: self poll.
	runningPollView copyPollId.
	
	self assert: (Clipboard clipboardText) equals: 'test-id'
	
	