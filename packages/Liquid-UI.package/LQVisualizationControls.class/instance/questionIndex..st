accessing
questionIndex: anIndex 
	(self questionList at: anIndex) isFreeTextQuestion
		ifTrue: [self newFreeTextViewFor: anIndex]
		ifFalse: [self newChoicesViewFor: anIndex].
	self changed: #questionIndex