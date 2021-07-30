accessing
choiceAt: anIndex put: aBoolean

	| choice newSelectedChoices |
	choice := self choiceList at: anIndex ifAbsent: [^ self].
	newSelectedChoices := aBoolean
		ifTrue: [selectedChoices copyWith: choice]
		ifFalse: [selectedChoices copyWithout: choice].
	
	newSelectedChoices size <= self question maxNumberOfChoices ifTrue: [
		selectedChoices := newSelectedChoices.
		self updateAnswer].
	self changed: #getRemainingVotedChoices.
	self changed: #choiceSelected