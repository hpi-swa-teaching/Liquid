stepping
step

	| fetched |
	self quiz ifNil: [^ self].
	fetched := LQPollRepo default at: self quiz quizId ifAbsent: [^ self].
	(fetched isKindOf: LQKahootQuiz) ifFalse: [^ self].
	self quiz: fetched.
	self changed: #leaderboard.
	(self currentQuestionIndex ~= fetched currentQuestionIndex) ifTrue: [
		(fetched currentQuestionIndex > fetched questionList size) ifTrue: [^ self done].
		self currentQuestionIndex: fetched currentQuestionIndex.
		self selectedChoiceIndex: 0.
		self hasSubmitted: false.
		self changed: #questionTitle.
		self changed: #choiceList.
		self changed: #questionCounterText.
		self changed: #nextEnabled.
		self changed: #previousEnabled]
