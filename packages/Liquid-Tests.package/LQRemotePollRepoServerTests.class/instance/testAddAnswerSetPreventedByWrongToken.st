testing
testAddAnswerSetPreventedByWrongToken

	| answerSet1 q1 |
	
	q1 := (self poll pollDraft questionList first).
	answerSet1 := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.
	answerSet1 addAnswer: (LQAnswer new
		questionId: (q1 id);
		choicesRanking: {(q1 choiceList second) description};
		yourself).

	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	LQPollRepo default token: 'This is incorrect'.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size)