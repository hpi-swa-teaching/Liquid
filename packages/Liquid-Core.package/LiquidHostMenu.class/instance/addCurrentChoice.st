input fields
addCurrentChoice

(self currentChoiceInput) ifNotNil: [
	self addChoice: self currentChoiceInput asString.
].