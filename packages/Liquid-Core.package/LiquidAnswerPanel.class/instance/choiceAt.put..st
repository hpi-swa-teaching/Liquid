accessing
choiceAt: anIndex put: aBoolean
|choice newSelectedChoices|
"Commented out is the standard implementation for a MultiSelectionList. Leaving it here for now should our own code turn out to be malfunctioning"
	"newSelectedChoices := selectedChoices
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self choiceList at: anIndex ifAbsent: [^ self])."
	choice := self choiceList at: anIndex ifAbsent: [^ self].
	newSelectedChoices := aBoolean 
			ifTrue: [selectedChoices copyWith: choice] 
			ifFalse: [selectedChoices copyWithout: choice].

	(newSelectedChoices size <= maxNumberOfChoices)
		ifTrue: [
				selectedChoices := newSelectedChoices.
				self updateAnswer.
				].
		"TODO: Let the user know that the maximum number of choices was reached ifFalse:"
	self changed: #choiceSelected.