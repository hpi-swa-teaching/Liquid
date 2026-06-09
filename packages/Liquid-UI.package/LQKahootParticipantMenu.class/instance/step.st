stepping
step

	| fetched |
	self quiz ifNil: [^ self].
	fetched := LQPollRepo default at: self quiz quizId ifAbsent: [^ self].
	(fetched isKindOf: LQKahootQuiz) ifTrue: [
		(self currentQuestionIndex ~= fetched currentQuestionIndex) ifTrue: [
			self quiz: fetched.
			(fetched currentQuestionIndex > fetched questionList size) ifTrue: [^ self done].
			self currentQuestionIndex: fetched currentQuestionIndex.
			self selectedChoiceIndex: 0.
			self hasSubmitted: false.
			self changed: #questionTitle.
			self changed: #choiceList.
			self changed: #questionCounterText.
			self changed: #nextEnabled.
			self changed: #previousEnabled]]
