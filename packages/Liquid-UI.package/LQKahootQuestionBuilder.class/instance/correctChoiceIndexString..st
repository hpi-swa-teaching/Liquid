accessing
correctChoiceIndexString: aString

	| index |
	index := aString asInteger.
	index ifNil: [^ self].
	(self question choices includesIndex: index)
		ifTrue: [self question correctChoiceIndex: index].
	self changed: #correctChoiceIndexString
