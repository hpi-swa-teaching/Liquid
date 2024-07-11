printing
printDataOn: aStream

	| orderedIds |
	orderedIds := self pollDraft questionList collect: [:aQuestion | aQuestion id].
	self pollDraft questionList do: [:aQuestion |
		aStream nextPutAll: aQuestion title.
		aStream nextPutAll: ':'].
	aStream nextPut: Character cr.
	self answerSets do: [:answer |
		answer printDataOn: aStream for: orderedIds with: ';'.
		aStream nextPut: Character cr]