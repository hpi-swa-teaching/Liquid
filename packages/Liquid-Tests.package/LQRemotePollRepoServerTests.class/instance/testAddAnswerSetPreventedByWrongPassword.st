testing
testAddAnswerSetPreventedByWrongPassword
	| answerSet1 q1 |
	
	q1 := (self poll pollDraft questionList at: 1).
	answerSet1 := LQAnswerSet new 
		userpwd: self user1 pwd;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList at: 2) description};
		yourself).

	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	LQPollRepo default currentPassword: 'This is incorrect'.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size)