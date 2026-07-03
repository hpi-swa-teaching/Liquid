testing
testCountNumberOfAnswersWithChoiceForQuestion

	self poll addAnswerSet: self as1; addAnswerSet: self as2.
	self assert: ((LQPollStatistics poll: self poll) countNumberOfAnswersWithChoice: self q1a1 ForQuestion: self q1) equals: 2.
	self assert: ((LQPollStatistics poll: self poll) countNumberOfAnswersWithChoice: self q1a2 ForQuestion: self q1) equals: 1