testing
testUserAnsweredPollTrue

	self answerSet1 token: self user1 token.
	self deny: (self poll answeredByUser: self user1).
	self poll addAnswerSet: self answerSet1.
	self assert: (self poll answeredByUser: self user1)