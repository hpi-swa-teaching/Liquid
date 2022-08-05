helper methods
setUpQuestions

	self q1c1: (self createChoice1OfFirstQuestion).
	self q1c2: (self createChoice2OfFirstQuestion).
	self q2c1: (self createChoice1OfSecondQuestion).
	self q2c2: (self createChoice2OfSecondQuestion).
	self q1: (self createQuestionOne).
	self q2: (self createQuestionTwo)