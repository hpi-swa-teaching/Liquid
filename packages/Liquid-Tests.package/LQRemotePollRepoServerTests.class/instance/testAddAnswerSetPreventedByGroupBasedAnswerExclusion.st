testing
testAddAnswerSetPreventedByGroupBasedAnswerExclusion
	| answerSet1 answerSet2 q1 |
	
	q1 := (self poll pollDraft questionList at: 1).
	answerSet1 := LQAnswerSet new 
		userpwd: self user1 pwd;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList at: 1) description};
		yourself).
	
	answerSet2 := LQAnswerSet new 
		userpwd: self user2 pwd;
	 	pollId: (self poll id);
		yourself.
	
	answerSet2 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList at: 2) description};
		yourself).
	
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	LQPollRepo default currentPassword: self user1 pwd.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	LQPollRepo default currentPassword: self user2 pwd.
	LQPollRepo default addAnswerSet: answerSet2 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size) 