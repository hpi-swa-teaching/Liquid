initialize-release
initialize

	super initialize.
	self questionBuilders: OrderedCollection new.
	self kahootQuiz: LQKahootQuiz new.
	self kahootQuiz questionList: OrderedCollection new.
	self currentQuestion: (self questionBuilders size min: 1)
