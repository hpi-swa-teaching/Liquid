accessing
setIndex: anIndex

	anIndex isZero ifTrue: [^ self].
	"As we always want to have exactly one item selected, we have to ignore the deselection command."
	(self questionList at: anIndex) isFreeTextQuestion
		ifTrue: [self newFreeTextViewFor: anIndex]
		ifFalse: [self newChoicesViewFor: anIndex].
	self index: anIndex.
	self changed: #getIndex