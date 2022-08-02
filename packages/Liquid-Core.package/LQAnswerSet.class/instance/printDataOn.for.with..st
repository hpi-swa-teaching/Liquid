printing
printDataOn: aStream for: orderedQuesstionIDs with: aDelimiter

	orderedQuesstionIDs do: [:answerId |
								self answers at: answerId ifPresent: [:printedAnswer | printedAnswer printDataOn: aStream].
								aStream nextPutAll: aDelimiter]