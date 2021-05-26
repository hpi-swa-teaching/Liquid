as yet unclassified
getResults
	| stream |
	stream := WriteStream on: String new.
	self poll printDataOn: stream withDelimiter: ';'.
	^ stream contents