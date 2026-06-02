initialize-release
initialize

	super initialize.
	self questionList: OrderedCollection new.
	self quizId: ((Random new nextInt: 900000) + 99999) printString
