printing
printDataOn: aStream withOrder: orderedQuesstionIDs withDelimiter: aDelimiter

	orderedQuesstionIDs do: [:answerId |
								self answers at: answerId ifPresent: [:printedAnswer | printedAnswer printDataOn: aStream].
								aStream nextPutAll: aDelimiter]