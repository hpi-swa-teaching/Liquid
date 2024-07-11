testing
testGroupBasedAnswerExclusionEnforced

	self answerSet1 token: self user1 token.
	self answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (self q1 id);
		choicesRanking: {(self q1 choiceList first) description};
		yourself).
	self answerSet2 addAnswer: (LQChoicesAnswer new
		questionId: (self q1 id);
		choicesRanking: {(self q1 choiceList second) description};
		yourself).
	self deny: ((LQAntiCheat new) is: self answerSet1 From: self user1 ValidFor: self poll).
	self poll addAnswerSet: self answerSet1.
	self deny: ((LQAntiCheat new) is: self answerSet2 From: self user2 ValidFor: self poll)