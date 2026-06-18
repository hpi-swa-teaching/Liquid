formatting
formatRows: aRowCollection

	| stream |
	stream := String new writeStream.
	aRowCollection
		do: [:eachRow | stream nextPutAll: (self formatRow: eachRow)]
		separatedBy: [stream nextPutAll: rowSeparator].
	^ stream contents