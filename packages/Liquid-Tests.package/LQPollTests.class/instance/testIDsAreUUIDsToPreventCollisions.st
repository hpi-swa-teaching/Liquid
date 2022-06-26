tests
testIDsAreUUIDsToPreventCollisions

	| answerID answerSetID choicesAnswerID choicesQuestionID pollID questionID userSetID |
	answerID := LQAnswer new id.
	self assert: (UUID fromString: answerID) asString equals: answerID.
	
	choicesAnswerID := LQChoicesAnswer new id.
	self assert: (UUID fromString: choicesAnswerID) asString equals: choicesAnswerID.
	
	answerSetID := LQAnswerSet new id.
	self assert: (UUID fromString: answerSetID) asString equals: answerSetID.
	
	pollID := LQPoll new id.
	self assert: (UUID fromString: pollID) asString equals: pollID.
	
	questionID := LQQuestion new id.
	self assert: (UUID fromString: questionID) asString equals: questionID.
	
	choicesQuestionID := LQChoicesQuestion new id.
	self assert: (UUID fromString: choicesQuestionID) asString equals: choicesQuestionID.
	
	userSetID := LQUserSet new id.
	self assert: (UUID fromString: userSetID) asString equals: userSetID.