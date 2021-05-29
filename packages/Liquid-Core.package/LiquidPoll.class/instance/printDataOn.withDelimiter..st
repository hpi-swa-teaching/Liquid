as yet unclassified
printDataOn: aStream withDelimiter: aDelimiter 
	| orderedIds |
	orderedIds := self pollDraft questionList
				collect: [:aQuestion | aQuestion id].
	self pollDraft questionList
		do: [:aQuestion | 
			aQuestion printOn: aStream.
			aStream nextPutAll: aDelimiter].
	aStream nextPut: Character linefeed.
	self answerSets
		do: [:answer | 
			answer
				printDataOn: aStream
				withOrder: orderedIds
				withDelimiter: aDelimiter.
			aStream nextPut: Character linefeed]