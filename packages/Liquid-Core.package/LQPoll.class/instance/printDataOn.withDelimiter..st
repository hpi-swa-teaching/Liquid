printing
printDataOn: aStream withDelimiter: aDelimiter

	| orderedIds |
	orderedIds := self pollDraft questionList collect: [:aQuestion | aQuestion id].
	self pollDraft questionList do: [:aQuestion |
		aStream nextPutAll: aQuestion title.
		aStream nextPutAll: aDelimiter].
	aStream nextPut: Character cr.
	self answerSets do: [:answer |
		answer printDataOn: aStream for: orderedIds with: aDelimiter.
		aStream nextPut: Character cr]