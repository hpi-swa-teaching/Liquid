accessing
getChildren
	^ {self builder build: (self buildChoiceListWith: self builder).
		self builder build: (self buildVoteChoiceButtonWith: self builder).
		self builder build: (self buildVotedChoiceListWith: self builder).
		}