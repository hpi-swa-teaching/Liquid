testing
testPollSanitization
	| answerSet1 q1 |
	
	q1 := (self poll pollDraft questionList at: 1).
	answerSet1 := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList at: 2) description};
		yourself).
	
	LQPollRepo default currentToken: self user1 token.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 1 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	self assert: 0 equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) answerSets size).
	LQPollRepo default currentToken: self user2 token.
	self assert: 0 equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) answerSets size).
	self assert: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) guard hashedPassword isNil).
	self assert: '' equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) pollDraft userSetID)