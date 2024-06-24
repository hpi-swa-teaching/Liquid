printing
printDataOn: aStream for: orderedQuestionIDs with: aDelimiter

	orderedQuestionIDs do: [:answerId |
								self answers at: answerId ifPresent: [:printedAnswer | printedAnswer printDataOn: aStream].
								aStream nextPutAll: aDelimiter].