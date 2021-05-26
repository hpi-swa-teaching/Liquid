as yet unclassified
getResults
|stream |
	stream := WriteStream on: (String new).
	self poll printOn: stream withDelimiter: ';'.
	^ stream contents.