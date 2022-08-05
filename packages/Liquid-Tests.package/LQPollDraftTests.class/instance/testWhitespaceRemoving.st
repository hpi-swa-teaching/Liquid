testing
testWhitespaceRemoving
	
	| q1 q2 q3 temporaryPollDraft s1 s2 s3 |
	
	q1 := self createQuestionOne.
	q2 := self createQuestionTwo.
	q3 := self createQuestionThree.
	temporaryPollDraft := LQPollDraft new questionList: {q1 . q2 . q3}.
	s1 := self createSolutionOne.
	s2 := self createSolutionTwo.
	s3 := self createSolutionThree.
	self assert: s1 equals: temporaryPollDraft questionList first choiceDescriptions.
	self assert: s2 equals: temporaryPollDraft questionList second choiceDescriptions.
	self assert: s3 equals: temporaryPollDraft questionList third choiceDescriptions