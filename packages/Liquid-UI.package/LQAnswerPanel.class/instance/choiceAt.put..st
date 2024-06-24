accessing
choiceAt: anIndex put: aBoolean

	| choice newSelectedChoices |
	
	choice := self choiceDescriptions at: anIndex ifAbsent: [^ self].
	newSelectedChoices := self selectedChoices copy.
	aBoolean
		ifTrue: [(newSelectedChoices includes: choice) ifFalse: [newSelectedChoices add: choice]]
		ifFalse: [newSelectedChoices remove: choice ifAbsent:[]].
	(self isValidSelection: newSelectedChoices ForChoiceAt: anIndex) ifTrue: [
		self selectedChoices: newSelectedChoices.
		self updateAnswer].
	self changed: #getRemainingVotedChoices.
	self changed: #fillSideboard.
	self changed: #choiceSelected