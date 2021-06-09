poll-building
addCurrentQuestion

(self currentQuestionInput) ifNotNil: [
	self addQuestion: self currentQuestionInput asString.
]