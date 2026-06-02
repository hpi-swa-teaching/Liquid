initialize-release
initialize

	super initialize.
	self questionList: OrderedCollection new.
	self participants: OrderedCollection new.
	self currentQuestionIndex: 0.
	self isStarted: false.
	self quizId: ((Random new nextInt: 900000) + 99999) printString
