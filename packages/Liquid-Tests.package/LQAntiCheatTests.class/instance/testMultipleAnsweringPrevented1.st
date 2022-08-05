testing
testMultipleAnsweringPrevented1
	
	self answerSet1 token: self user1 token.
	self assert: ((LQAntiCheat new) is: self answerSet1 From: self user1 ValidFor: self poll).
	self poll addAnswerSet: self answerSet1.
	self deny: ((LQAntiCheat new) is: self answerSet1 From: self user1 ValidFor: self poll)
	