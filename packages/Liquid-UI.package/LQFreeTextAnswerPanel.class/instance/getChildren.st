accessing
getChildren

	^ {
		self builder build: (self buildQuestionTitleTextWith: self builder).
		self builder build: (self buildQuestionTooltipWith: self builder).
		self builder build: (self buildRemainingCharactersCounterTextWith: self builder).
		self builder build: (self buildTextInputWith: self builder)}