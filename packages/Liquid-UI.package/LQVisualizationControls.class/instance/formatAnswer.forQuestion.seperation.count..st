accessing
formatAnswer: anAnswer forQuestion: aQuestion seperation: aSeparation count: anInteger

	| marker countStr |
	marker := ((anAnswer respondsTo: #wasSubmittedOnOriginalQuestion)
		and: [anAnswer wasSubmittedOnOriginalQuestion]
		and: [aQuestion wasEdited])
		ifTrue: [' (Answered before question was edited.)']
		ifFalse: [''].
	countStr := anInteger >= 2
		ifTrue: [' (', anInteger asString, ')']
		ifFalse: [''].
	^ anAnswer answer, countStr, marker, aSeparation