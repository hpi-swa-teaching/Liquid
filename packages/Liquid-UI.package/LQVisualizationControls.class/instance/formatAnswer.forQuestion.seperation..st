accessing
formatAnswer: anAnswer forQuestion: aQuestion seperation: aSeparation

	| marker |
	marker := ((anAnswer respondsTo: #wasSubmittedOnOriginalQuestion)
		and: [anAnswer wasSubmittedOnOriginalQuestion]
		and: [aQuestion wasEdited])
		ifTrue: [' (Answered before question was edited.)']
		ifFalse: [''].
	^ anAnswer answer, marker, aSeparation