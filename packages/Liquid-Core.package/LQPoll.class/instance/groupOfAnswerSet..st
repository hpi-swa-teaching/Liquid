accessing - visualization
groupOfAnswerSet: anAnswerSet

	self requiresAuthentication ifFalse: [^ nil].
	^ (self userEntries
		detect: [:aUser | aUser token = anAnswerSet token]
		ifNone: [^ nil]) group