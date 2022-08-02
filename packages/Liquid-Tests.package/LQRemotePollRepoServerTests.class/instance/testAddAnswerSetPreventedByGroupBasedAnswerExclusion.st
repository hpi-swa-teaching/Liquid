testing
testAddAnswerSetPreventedByGroupBasedAnswerExclusion

	| answerSet1 answerSet2 q1 |
	
	q1 := (self poll pollDraft questionList first).
	answerSet1 := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList first) description};
		yourself).
	
	answerSet2 := LQAnswerSet new 
		token: self user2 token;
	 	pollId: (self poll id);
		yourself.
	
	answerSet2 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList second) description};
		yourself).
	
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	
	LQPollRepo default token: self user1 token.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	
	LQPollRepo default token: self user2 token.
	LQPollRepo default addAnswerSet: answerSet2 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size)