initialize-release
buildQuestions

	self q1a1: (LQChoice newFrom: 'Q1A1').
	self q1a2: (LQChoice newFrom: 'Q1A2').
	self q2a1: (LQChoice newFrom: 'Q2A1').
	self q2a2: (LQChoice newFrom: 'Q2A2').
	self q1: (self createQuestionTitled: 'Question 1' withChoices: {self q1a1. self q1a2}).
	self q2: (self createQuestionTitled: 'Question 2' withChoices: {self q2a1. self q2a2})