accessing
setIndex: anIndex

	(self questionList at: anIndex) isFreeTextQuestion
		ifTrue: [self newFreeTextViewFor: anIndex]
		ifFalse: [self newChoicesViewFor: anIndex].
	self index: anIndex.
	self changed: #getIndex