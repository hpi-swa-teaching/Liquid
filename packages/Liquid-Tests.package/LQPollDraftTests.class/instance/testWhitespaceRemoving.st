tests
testWhitespaceRemoving
	
	| q1 q2 q3 pollDraft s1 s2 s3 |
	
	q1 := self createQuestionOne.
	q2 := self createQuestionTwo.
	q3 := self createQuestionThree.
	
	pollDraft := LQPollDraft new questionList: {q1 . q2 . q3}.
	

	s1 := self createSolutionOne.
	s2 := self createSolutionTwo.
	s3 := self createSolutionThree.
	
	pollDraft removeWhitespacesFromQuestions.
	
	self assert: s1 equals: pollDraft questionList first choiceList.
	self assert: s2 equals: pollDraft questionList second choiceList.
	self assert: s3 equals: pollDraft questionList third choiceList