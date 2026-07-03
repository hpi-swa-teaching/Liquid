accessing
applyChoiceListFromChoiceTexts
	| choices maxChoices |
	choices := (self choiceTexts select: [:each | each withBlanksTrimmed notEmpty]) collect: [:each | LQChoice newFrom: each].
	self question choiceList: choices.
	self question maxNumberOfChoices ifNotNil: [:max |
		maxChoices := max min: choices size.
		maxChoices = 0
			ifTrue: [self question maxNumberOfChoices: nil]
			ifFalse: [self question maxNumberOfChoices: maxChoices]].
	self refreshChoiceFieldTexts