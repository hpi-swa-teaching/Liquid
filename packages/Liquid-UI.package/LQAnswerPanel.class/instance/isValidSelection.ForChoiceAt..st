validation
isValidSelection: aSet ForChoiceAt: anIndex

	^ (self isValidSizedSelection: aSet) and: [self choiceIsNotExcluded: anIndex]