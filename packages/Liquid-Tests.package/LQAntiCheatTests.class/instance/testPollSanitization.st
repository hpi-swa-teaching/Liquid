testing
testPollSanitization

	self answerSet1 token: self user1 token.
	self answerSet1 addAnswer: (LQMultChoiceAnswer new
		questionId: (self q1 id);
		choicesRanking: {(self q1 choiceList second) description};
		yourself).
	LQPollRepo default token: self user1 token.
	LQPollRepo default addAnswerSet: self answerSet1 ToPoll: self poll id.
	self assert: 1 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	self assert: 0 equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) answerSets size).
	LQPollRepo default token: self user2 token.
	self assert: 0 equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) answerSets size).
	self assert: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) guard hashedPassword isNil).
	self assert: '' equals: ((LQPollRepo default at: self poll id ifAbsent: [^self fail]) pollDraft userSetID)