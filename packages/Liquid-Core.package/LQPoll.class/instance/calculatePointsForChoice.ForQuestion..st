accessing - visualization
calculatePointsForChoice: aChoice ForQuestion: aQuestion
	| points |
	points := 0.
	self includedAnswerSets do: [:anAnswerSet |
		(anAnswerSet answers at: aQuestion id ifAbsent: [nil]) ifNotNil: [:answer |
			| ranking index |
			ranking := answer choicesRanking.
			index := ranking indexOf: aChoice description.
			
			index > 0 ifTrue: [
				points := points + (ranking size - index + 1).
			]
		]
	].
	^ points