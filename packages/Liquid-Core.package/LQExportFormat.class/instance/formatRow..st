formatting
formatRow: aRow

	| stream |
	stream := String new writeStream.
	aRow
		do: [:field | stream nextPutAll: (self formatField: field)]
		separatedBy: [stream nextPutAll: delimiter].
	^ stream contents