accessing
correctChoiceIndexString: aString

	| index |
	index := aString asString asInteger.
	index ifNil: [^ self].
	(index between: 1 and: self question choices size) ifTrue: [self question correctChoiceIndex: index]