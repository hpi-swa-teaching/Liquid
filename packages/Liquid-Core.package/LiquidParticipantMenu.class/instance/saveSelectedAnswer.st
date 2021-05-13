accessing
saveSelectedAnswer
	"This is for single-choice only"
	(self selectedAnswerList isEmpty) 
	ifFalse: [self selectedAnswerList at: 1 put: self selectedItemAnswer.]
	ifTrue: [self selectedAnswerList add: self selectedItemAnswer].
	self changed: #selectedAnswerList.