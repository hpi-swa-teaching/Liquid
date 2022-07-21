testing
testPollSanitization
	| answerSet1 q1 |
	
	q1 := (self poll pollDraft questionList at: 1).
	answerSet1 := LQAnswerSet new 
		userpwd: self user1 pwd;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {2};
		yourself).
	
	LQPollRepo default currentPassword: self user1 pwd.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 1 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	self assert: 0 equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) answerSets size).
	LQPollRepo default currentPassword: self user2 pwd.
	self assert: 0 equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) answerSets size).
	self assert: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) guard hashedPassword isNil).
	self assert: '' equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) pollDraft userSetID)