accessing
getChildren
	^ {self builder build: (self buildMultiSelectionListWith: self builder).
			self builder build: (self buildQuestionTitleTextWith: self builder).
			self builder build: (self buildRemainingVotedChoicesCounterTextWith: self builder).
		}