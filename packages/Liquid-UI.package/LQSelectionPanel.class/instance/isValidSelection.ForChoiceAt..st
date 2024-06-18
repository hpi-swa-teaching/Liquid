validation
isValidSelection: anOrderedCollection ForChoiceAt: anIndex

	^ (self isValidSizedSelection: anOrderedCollection) and: [self choiceIsNotExcluded: anIndex]