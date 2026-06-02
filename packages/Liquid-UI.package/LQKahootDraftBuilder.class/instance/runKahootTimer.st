modifying
runKahootTimer

	self kahootQuiz currentQuestionIndex: 1.
	[ self kahootQuiz currentQuestionIndex <= self kahootQuiz questionList size ] whileTrue: [
		| question duration |
		question := self kahootQuiz questionList at: self kahootQuiz currentQuestionIndex.
		duration := question timeLimit.
		(Delay forSeconds: duration) wait.
		self kahootQuiz currentQuestionIndex: self kahootQuiz currentQuestionIndex + 1.
		self changed: #list.
	].
	self kahootQuiz isStarted: false.
	self changed: #isStartButtonEnabled
