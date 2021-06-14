accessing
choiceAt: anIndex put: aBoolean
|newSelectedChoices|
	newSelectedChoices := selectedChoices
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self choiceList at: anIndex ifAbsent: [ ^ self ]).
	(newSelectedChoices size <= maxNumberOfChoices)
		ifTrue: [
				selectedChoices := newSelectedChoices.
				self updateAnswer.
				].
		"TODO: Let the user know that the maximum number of choices was reached ifFalse:"
	self changed: #choiceSelected.