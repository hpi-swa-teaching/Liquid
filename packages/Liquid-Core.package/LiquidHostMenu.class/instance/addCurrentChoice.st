poll-building
addCurrentChoice

(self currentChoiceInput) ifNotNil: [
	self addChoice: self currentChoiceInput asString.
].