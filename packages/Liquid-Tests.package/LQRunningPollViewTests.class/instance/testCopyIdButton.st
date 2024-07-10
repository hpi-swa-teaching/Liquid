testing
testCopyIdButton

	| runningPollView |
	
	runningPollView := LQRunningPollView newWithPoll: self poll.
	runningPollView copyPollLink.
	"interacting with System clipboard is not instantaneous, therefore we wait"
	(Delay forSeconds: 1) wait.
	self assert: 'test-id' equals: (runningPollView pollId).
	self assert: 'test-id' equals: Clipboard clipboardText asString
	
	