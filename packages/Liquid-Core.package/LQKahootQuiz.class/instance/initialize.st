initialize-release
initialize

	super initialize.
	self questionList: OrderedCollection new.
	self quizId: UUID new asString
