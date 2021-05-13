input fields
addCurrentAnswer

(self currentAnswerInput) ifNotNil: [
	self addAnswer: self currentAnswerInput asString.
].