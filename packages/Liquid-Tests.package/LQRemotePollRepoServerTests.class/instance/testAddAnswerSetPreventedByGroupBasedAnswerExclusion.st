testing
testAddAnswerSetPreventedByGroupBasedAnswerExclusion

	| answerSet1 answerSet2 q1 |
	
	q1 := (self poll pollDraft questionList first).
	answerSet1 := self createAnswerSet1With: q1.
	answerSet2 := self createAnswerSet2With: q1.
	
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	
	LQPollRepo default token: self user1 token.
	LQPollRepo default addAnswerSet: answerSet1 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size).
	
	LQPollRepo default token: self user2 token.
	LQPollRepo default addAnswerSet: answerSet2 ToPoll: self poll id.
	self assert: 0 equals: ((LQRemotePollRepoServer pollRepo at: self poll id) answerSets size)