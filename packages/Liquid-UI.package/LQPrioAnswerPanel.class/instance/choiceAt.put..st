accessing
choiceAt: anIndex put: aBoolean

	| choice newSelectedChoices |
	
	choice := self choiceDescriptions at: anIndex ifAbsent: [^ self].
	newSelectedChoices := aBoolean
		ifTrue: [self selectedChoices copyWith: choice]
		ifFalse: [self selectedChoices copyWithout: choice].
	
	(self isValidSelection: newSelectedChoices ForChoiceAt: anIndex) ifTrue: [
		self selectedChoices: newSelectedChoices.
		self updateAnswer].
	self changed: #getRemainingVotedChoices.
	self changed: #updateRankingIndices.
	self changed: #choiceSelected