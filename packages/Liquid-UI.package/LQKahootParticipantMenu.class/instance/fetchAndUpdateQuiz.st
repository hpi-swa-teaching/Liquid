actions
fetchAndUpdateQuiz

	| fetched |
	self quiz ifNil: [^ self].
	fetched := LQPollRepo default at: self quiz quizId ifAbsent: [^ self].
	(fetched isKindOf: LQKahootQuiz) ifFalse: [^ self].
	Project current addDeferredUIMessage: [self updateQuizState: fetched]