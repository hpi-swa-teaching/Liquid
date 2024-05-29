accessing
choiceAt: anIndex put: aBoolean

	| choice newSelectedChoices |
	
	choice := self choiceDescriptions at: anIndex ifAbsent: [^ self].
	newSelectedChoices := self selectedChoices.
	aBoolean
		ifTrue: [newSelectedChoices add: choice]
		ifFalse: [newSelectedChoices remove: choice].
	
	(self isValidSelection: newSelectedChoices ForChoiceAt: anIndex) ifTrue: [
		self selectedChoices: newSelectedChoices.
		self updateAnswer].
	self changed: #getRemainingVotedChoices.
	self changed: #getRankingIndices.
	self changed: #choiceSelected