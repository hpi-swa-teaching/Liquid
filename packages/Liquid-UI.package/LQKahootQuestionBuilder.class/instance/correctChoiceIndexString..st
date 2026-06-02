accessing
correctChoiceIndexString: aString

	| index |
	index := aString asString asInteger.
	index ifNil: [^ self].
	(self question choices includesIndex: index)
		ifTrue: [self question correctChoiceIndex: index]
