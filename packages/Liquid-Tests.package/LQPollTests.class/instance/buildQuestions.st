initialize-release
buildQuestions

	q1a1 := LQChoice newFrom: 'Q1A1'.
	q1a2 := LQChoice newFrom: 'Q1A2'.
	q2a1 := LQChoice newFrom: 'Q2A1'.
	q2a2 := LQChoice newFrom: 'Q2A2'.
	q1 := self createQuestionTitled: 'Question 1' withChoices: {q1a1 . q1a2}.
	q2 := self createQuestionTitled: 'Question 2' withChoices: {q2a1 . q2a2}.