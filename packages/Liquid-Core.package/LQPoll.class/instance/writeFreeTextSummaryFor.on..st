printing
writeFreeTextSummaryFor: aQuestion on: aStream

	(self groupAnswersFor: aQuestion) do: [:group | | answer count countStr |
		answer := group first.
		count := group second.
		countStr := count >= 2 ifTrue: [' (', count asString, 'x)'] ifFalse: [''].
		aStream nextPutAll: answer answer, countStr; cr]