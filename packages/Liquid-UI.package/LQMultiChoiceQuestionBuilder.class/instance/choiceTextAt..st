accessing
choiceTextAt: anIndex
	| text mappedIndex |
	text := self choiceTexts at: anIndex ifAbsent: [''].
	(text withBlanksTrimmed isEmpty) ifTrue: [^ text asText].
	mappedIndex := 0.
	1 to: anIndex do: [:i |
		((self choiceTexts at: i) withBlanksTrimmed notEmpty) ifTrue: [mappedIndex := mappedIndex + 1]].
	^ self attributedLineAt: mappedIndex in: self choiceDescriptions