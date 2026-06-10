accessing
choiceForTextAt: anIndex
	| mappedIndex |
	mappedIndex := 0.
	1 to: anIndex do: [:i |
		((self choiceTexts at: i) withBlanksTrimmed notEmpty) ifTrue: [mappedIndex := mappedIndex + 1]].
	mappedIndex = 0 ifTrue: [^ LQChoice newFrom: (self choiceTexts at: anIndex)].
	^ self question choiceList at: mappedIndex ifAbsent: [LQChoice newFrom: (self choiceTexts at: anIndex)]