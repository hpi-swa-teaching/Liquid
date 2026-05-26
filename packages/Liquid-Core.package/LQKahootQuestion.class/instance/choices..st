accessing
choices: anOrderedCollection

	choices := anOrderedCollection.
	choices isEmpty
		ifTrue: [self correctChoiceIndex: 1]
		ifFalse: [
			self correctChoiceIndex: ((self correctChoiceIndex ifNil: [1]) min: choices size max: 1)]
