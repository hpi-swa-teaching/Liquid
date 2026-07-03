accessing
choiceTextAt: anIndex put: aString
	self isInLiveEditMode ifTrue: [self question wasEdited: true].
	self choiceTexts at: anIndex put: aString asString.
	self applyChoiceListFromChoiceTexts