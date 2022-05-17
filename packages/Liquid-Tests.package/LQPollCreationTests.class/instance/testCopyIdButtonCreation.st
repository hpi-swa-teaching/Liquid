as yet unclassified
testCopyIdButtonCreation
	| runningPollView poll q1 |
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll id: 'test-id'.
	
	q1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {'Q1A1'. 'Q1A2'};
		yourself.
	
	poll pollDraft questionList add: q1.
	
	runningPollView := LQRunningPollView newWithPoll: poll.
	runningPollView copyPollId.
	
	self assert: (Clipboard clipboardText) equals: 'test-id'
	
	