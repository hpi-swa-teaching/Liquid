input fields
addCurrentQuestion

(self currentQuestionInput) ifNotNil: [
	self addQuestion: self currentQuestionInput asString.
]