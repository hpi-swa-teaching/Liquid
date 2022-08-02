accessing
choiceAt: anIndex put: aBoolean

	| choice newSelectedChoices |
	
	choice := self choiceDescriptions at: anIndex ifAbsent: [^ self].
	newSelectedChoices := aBoolean
		ifTrue: [self selectedChoices copyWith: choice]
		ifFalse: [self selectedChoices copyWithout: choice].
	
	(newSelectedChoices size <= self question maxNumberOfChoices and: [(self exclusionMarker excludes: anIndex) not]) ifTrue: [
		self selectedChoices: newSelectedChoices.
		self updateAnswer].
	self changed: #getRemainingVotedChoices.
	self changed: #choiceSelected