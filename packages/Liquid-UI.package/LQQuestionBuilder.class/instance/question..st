accessing
question: aQuestion

	(self isInLiveEditMode) ifTrue: [
		aQuestion wasEdited: true
		].
	question := aQuestion